<template>
  <div class="home">
    <view-edit
      :loading="loading"
      :show="show"
      :title="id ? '编辑用户' : '新建用户'"
      :width="600"
      @on-cancel="cancel('user-edit')"
      @on-save="save('user-edit')"
    >
      <div v-if="formShow">
        <a-form-model
          ref="ruleForm"
          :model="form"
          :rules="rules"
          :label-col="labelCol"
          :wrapper-col="wrapperCol"
        >
          <a-form-model-item ref="username" label="用户账号" prop="username">
            <a-input v-model="form.username" placeholder="请输入用户账号" />
          </a-form-model-item>

          <a-form-model-item v-if="!form.id" ref="password" label="登录密码" prop="password">
            <a-input type="password" v-model="form.password" placeholder="请输入登录密码" />
          </a-form-model-item>

          <a-form-model-item v-if="!form.id" ref="confirmpassword" label="确认密码" prop="confirmpassword">
            <a-input type="password" @blur="handleConfirmBlur" v-model="form.confirmpassword" placeholder="请输入确认密码" />
          </a-form-model-item>

          <a-form-model-item ref="realname" label="姓名" prop="realname">
            <a-input v-model="form.realname" placeholder="请输入姓名" />
          </a-form-model-item>

          <a-form-model-item label="角色分配" prop="orgId">
            <a-select  mode="multiple" style="width: 100%" placeholder="请选择用户角色" @change="handleChange">
              <a-select-option v-for="item in roleArr" :key="item.id">
                {{ item.roleName }}
              </a-select-option>
            </a-select>
          </a-form-model-item>

          <a-form-model-item label="性别" prop="sex">
            <a-select style="width: 100%" placeholder="请选择性别" @change="sexChange">
              <a-select-option v-for="item in sex" :key="item.sex">
                {{ item.txt }}
              </a-select-option>
            </a-select>
          </a-form-model-item>

          <a-form-model-item ref="email" label="邮箱" prop="email">
            <a-input v-model="form.email" placeholder="请输入邮箱" />
          </a-form-model-item>

          <a-form-model-item ref="phone" label="手机号" prop="phone">
            <a-input v-model="form.phone" placeholder="请输入手机号" />
          </a-form-model-item>
        </a-form-model>
      </div>
    </view-edit>
  </div>
</template>

<script>
import ViewEdit from "@/components/common/ViewEdit.vue";
import { listRole } from "@/api/system/role";
import { addUser } from "@/api/system/user"

export default {
  name: "userEdit",
  components: {
    ViewEdit
  },
  props: {
    show: {
      type: Boolean,
      default: false
    },
    id: {
      type: Number,
      default: null
    },
    obj: {
      type: Object,
      default: null
    }
  },
  watch: {
    show(newVal) {
      if (newVal) {
        this.formShow = true;
        this.form = this.obj;
        console.log(this.form)
        this.getData();
      }
    }
  },
  data() {
    return {
      sex: [
        { sex: "1", txt: "男" },
        { sex: "2", txt: "女" }
      ],
      labelCol: { span: 6 },
      wrapperCol: { span: 14 },
      formShow: false,
      loading: false,
      roleArr: [],
      form: {
        id: null,
        username: "",
        password: "",
        realname: "",
        avatar: "",
        sex: "",
        email: "",
        phone: "",
        tenantId: "",
        orgId: "",
        confirmpassword: ""
      },
      selectedRole: "",
      rules: {
        username: [{ required: true, transform:value=>value?value.trim():'', message: "用户账号不能为空" }, { validator: this.GLOBAL.validateSpecialCharacter }],
        realname: [{ required: true, transform:value=>value?value.trim():'', message: "姓名不能为空" }, { validator: this.GLOBAL.validateSpecialCharacter }],
        // password: [{ required: true, pattern: /^(?=.*[a-zA-Z])(?=.*\d)(?=.*[~!@#$%^&*()_+`\-={}:";'<>?,./]).{8,}$/,
        //     message: "密码由8位数字、大小写字母和特殊符号组成!"
        //   },
        //   { validator: this.validateToNextPassword }
        // ],
        // confirmpassword: [{ required: true, message: "请输入确认密码" }, { validator: this.compareToFirstPassword}],
        //
        password: [{ required: true, message: "请输入密码"}],
        confirmpassword: [{ required: true, message: "请输入确认密码" }],
        email: [{ validator: this.GLOBAL.validateEmail }],
        phone: [{ validator: this.GLOBAL.validatePhone }],
      }

    };
  },
  methods: {
    getData(){
      listRole().then(res => {
        if (res.data.code === 200) {
          this.roleArr = res.data.result;
        }
      })
    },
    sexChange(value){
      this.form.sex = value;
    },
    handleChange(value) {
      this.selectedRole = value.length > 0 ? value.join(",") : "";
    },
    save() {
      this.$refs.ruleForm.validate(valid => {
        if (valid) {
          this.form.selectedRoles = this.selectedRole;
          if(this.id) {
            this.$message.success("编辑成功")
          } else {
            addUser(this.form).then(res =>{
              if (res.data.success) {
                console.log(this.form)
                this.$message.success("添加成功")
                this.cancel();
              } else {
                this.$message.error(res.data.message)
              }
            });
          }
        } else {
          this.$message.warning("请正确填写表单")
          return false;
        }
      });
    },

    cancel() {
      this.obj = {};
      this.loading = false;
      this.$emit("cancelled");
      this.form = {
        id: null,
        username: "",
        password: "",
        realname: "",
        avatar: "",
        sex: "",
        email: "",
        phone: "",
        tenantId: "",
        orgId: "",
        confirmpassword: "",
        selectedRole: ""
      };
    },
    validateToNextPassword(rule, value, callback) {
      const form = this.form;
      const confirmpassword = form.confirmpassword;

      if (value && confirmpassword && value !== confirmpassword) {
        callback("两次输入的密码不一样！");
      }
      if (value && this.confirmDirty) {
        form.validateFields(["confirm"], { force: true });
      }
      callback();
    },
    compareToFirstPassword(rule, value, callback) {
      const password = this.form.password;
      if (value && value !== password) {
        callback("两次输入的密码不一样！");
      } else {
        callback();
      }
    },
    handleConfirmBlur(e) {
      const value = e.target.value;
      this.confirmDirty = this.confirmDirty || !!value;
    }
  }
};
</script>
