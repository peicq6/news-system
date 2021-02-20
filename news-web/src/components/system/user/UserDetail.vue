<template>
  <div>
    <view-detail
      :show="show"
      :okText="'关闭'"
      :title="'用户详情'"
      :width="600"
      @on-save="viewed"
    >
    <div v-if="showViewed">
      asdasd
    </div>
    </view-detail>
  </div>
</template>

<script>
import ViewDetail from "@/components/common/ViewDetail";

export default {
  name: "UserDetail",
  components: {
    ViewDetail
  },
  props: {
    show: {
      type: Boolean,
      default: false
    },
    obj: {
      type: Object,
      default: null
    }
  },
  watch: {
    show(newVal) {
      if (newVal) {
        this.showViewed = true;

      }
    }
  },
  data() {
    return {
      showViewed: false,
    };
  },
  methods: {
    viewed() {
      this.showViewed = false;
      this.$emit("viewed");
    }
  }
};
</script>

<style scoped>

</style>
