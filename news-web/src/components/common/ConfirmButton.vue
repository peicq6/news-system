<template>
  <div>
    <a-button @click="cancel" v-if="notCancel">取消</a-button>
    <a-button
      v-if="notCancel2"
      :loading="loading"
      :disabled="disabled"
      @click="submit"
      type="primary"
    >{{ okText2 }}</a-button
    >
    <a-button
      :loading="loading"
      :disabled="disabled"
      @click="save"
      type="primary"
      >{{ okText }}</a-button
    >
  </div>
</template>

<script>
export default {
  name: "ConfirmButton",
  props: {
    loading: {
      type: Boolean,
      default: true
    },
    notCancel: {
      type: Boolean,
      default: true
    },
    notCancel2: {
      type: Boolean,
      default: true
    },
    //是否禁用
    disabled: {
      type: Boolean,
      default: false
    },
    okText: {
      type: String,
      default: "保存"
    },
    okText2: {
      type: String,
      default: "提交"
    }
  },
  methods: {
    cancel() {
      this.$emit("on-cancel");
    },
    save() {
      this.$emit("on-save");
    },
    submit() {
      this.$emit("on-submit");
    }
  }
};
</script>

<style scoped></style>
