<template>
  <a-card :bordered="false">
    <a-row :gutter="24">
      <a-col :md="2" :sm="24">
        <div class="_button">
          <a-button type="primary" icon="plus" @click="add">添加用户</a-button>
        </div>
      </a-col>
    </a-row>
    <Stable
      ref="table"
      rowKey="id"
      :columns="columns"
      :data="loadData"
      :alert="options.alert"
      :rowSelection="options.rowSelection"
      showPagination="auto"
    >
      <span slot="serial" slot-scope="text, record, index">
        {{ index + 1 }}
      </span>
      <span slot="action" slot-scope="text, record">
        <template>
          <a @click="handleDetail(record)">详情</a>
          <a-divider type="vertical" />
          <a-dropdown>
            <a class="ant-dropdown-link">更多 <a-icon type="down"/></a>
            <a-menu slot="overlay">
              <a-menu-item>
                <a
                  href="javascript:;"
                  @click="handleChangePassword(record.username)"
                  >密码</a
                >
              </a-menu-item>
              <a-menu-item>
                <a href="javascript:;" @click="handleEdit(record)">编辑</a>
              </a-menu-item>
              <a-menu-item>
                <a-popconfirm
                  title="确定删除吗?"
                  @confirm="() => handleDelete(record.id)"
                >
                  <a>删除</a>
                </a-popconfirm>
              </a-menu-item>
              <a-menu-item v-if="record.status === 1">
                <a-popconfirm
                  title="确定冻结吗?"
                  @confirm="() => handleFrozen(record.id, 2, record.username)"
                >
                  <a>冻结</a>
                </a-popconfirm>
              </a-menu-item>
              <a-menu-item v-if="record.status === 2">
                <a-popconfirm
                  title="确定解冻吗?"
                  @confirm="() => handleFrozen(record.id, 1, record.username)"
                >
                  <a>解冻</a>
                </a-popconfirm>
              </a-menu-item>
            </a-menu>
          </a-dropdown>
        </template>
      </span>
    </Stable>

    <user-edit
      :id="editId"
      :show="editShow"
      :obj="obj"
      @cancelled="cancelled"
      @saved="saved"
    />
    <user-detail :obj="obj" :show="detailShow" @viewed="viewed" />
  </a-card>
</template>

<script>
import UserEdit from "@/components/system/user/UserEdit";
import UserDetail from "@/components/system/user/UserDetail";
import { Stable } from "@/components";
import { getUserList, delUser } from "@/api/system/user";
import moment from "moment";

export default {
  name: "user",
  components: {
    UserEdit,
    Stable,
    UserDetail
  },
  data() {
    return {
      // 编辑
      editShow: false,
      editId: null,
      obj: {},
      detailShow: false,
      // 查询参数
      queryParam: {},
      selectedRowKeys: [],
      selectedRows: [],
      // 表头
      columns: [
        {
          title: "#",
          scopedSlots: { customRender: "serial" }
        },
        {
          title: "登录账号",
          dataIndex: "username",
          sorter: true
        },
        {
          title: "姓名",
          dataIndex: "realname",
          ellipsis: true
        },
        {
          title: "性别",
          dataIndex: "sex",
          sorter: true,
          customRender: text => {
            if (text === "1") {
              return "男";
            } else {
              return "女";
            }
          }
        },
        {
          title: "电子邮箱",
          dataIndex: "email"
        },
        {
          title: "手机号码",
          dataIndex: "phone",
          sorter: true
        },
        {
          title: "状态",
          dataIndex: "status",
          customRender: text => {
            if (text === 1) {
              return "正常";
            } else {
              return "冻结";
            }
          }
        },
        {
          title: "创建时间",
          dataIndex: "createTime",
          sorter: true,
          customRender: text => {
            return moment(text).format("YYYY-MM-DD");
          }
        },
        {
          title: "操作",
          dataIndex: "action",
          align: "center",
          scopedSlots: { customRender: "action" }
        }
      ],
      // 加载数据方法 必须为 Promise 对象
      loadData: parameter => {
        return getUserList(Object.assign(parameter, this.queryParam)).then(
          res => {
            if (res.data.code === 200) {
              return res.data.result;
            }
          }
        );
      },
      options: {
        alert: {
          show: true,
          clear: () => {
            this.selectedRowKeys = [];
          }
        },
        rowSelection: {
          selectedRowKeys: this.selectedRowKeys,
          onChange: this.onSelectChange
        }
      }
    };
  },
  methods: {
    onSelectChange(selectedRowKeys, selectedRows) {
      this.selectedRowKeys = selectedRowKeys;
      this.selectedRows = selectedRows;
    },
    // 添加 || 编辑 || 删除 || 排序
    add() {
      this.editId = null;
      this.editShow = true;
    },
    handleEdit(record) {
      this.editId = record.id;
      this.obj = record;
      this.editShow = true;
    },
    handleDelete(id) {
      delUser(id).then(res => {
        if (res.data.success) {
          this.$message.success("删除成功");
          this.$refs.table.refresh(true);
        } else {
          this.$message.error(res.data.message);
        }
      });
    },
    handleChangePassword() {
      this.$message.warn("暂未实现");
    },
    handleFrozen() {
      this.$message.warn("暂未实现");
    },
    //查看详情回调
    viewed() {
      this.detailShow = false;
    },
    handleDetail() {
      this.$message.warn("暂未实现");
      // this.obj = record;
      // this.detailShow = true;
    },
    // 编辑时保存和取消的回调
    saved() {
      this.cancelled();
    },
    cancelled() {
      this.editId = null;
      this.obj = {};
      this.editId = null;
      this.editShow = false;
      this.$refs.table.refresh(true);
    }
  }
};
</script>

<style scoped>
._button {
  margin-bottom: 5px;
}
</style>
