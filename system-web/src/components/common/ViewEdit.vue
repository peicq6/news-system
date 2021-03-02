<template>
  <div>
    <a-modal
      v-model="modalShow"
      :title="title"
      @cancel="cancel"
      closable
      :keyboard="false"
      :maskClosable="false"
      on-ok="handleOk"
      :width="width"
      @on-cancel="notCancel ? save() : cancel()"
    >
      <div class="view-edit-container">
        <div class="view-edit-content">
          <slot v-if="contentShow" />
        </div>
      </div>
      <template v-slot:footer>
        <confirm-button
          :loading="loading"
          :notCancel="notCancel"
          :notCancel2="notCancel2"
          :okText="okText"
          :okText2="okText2"
          :disabled="disabled"
          @on-cancel="cancel"
          @on-save="save"
          @on-submit="submit"
        />
        <slot class="btn-extra" name="btn-extra" />
      </template>
    </a-modal>
  </div>
</template>

<script>
import ConfirmButton from './ConfirmButton'

export default {
  name: 'ViewEdit',
  components: {
    ConfirmButton
  },
  props: {
    width: {
      type: [Number, String],
      default: 520
    },
    title: {
      type: String,
      required: true
    },
    notCancel2: {
      type: Boolean,
      default: false
    },
    show: {
      type: Boolean,
      default: false
    },
    loading: {
      type: Boolean,
      default: false
    },
    okText: {
      type: String,
      default: '保存'
    },
    okText2: {
      type: String,
      default: '提交'
    },
    notCancel: {
      type: Boolean,
      default: true
    },
    // 是否禁用
    disabled: {
      type: Boolean,
      default: false
    }
  },
  watch: {
    show (val) {
      this.modalShow = val
      if (val) {
        this.contentShow = val
      } else {
        setTimeout(() => {
          this.contentShow = val
        }, 200)
      }
    }
  },
  data () {
    return {
      modalShow: false,
      contentShow: false
    }
  },
  methods: {
    save () {
      this.$emit('on-save')
    },
    cancel () {
      this.$emit('on-cancel')
    },
    submit () {
      this.$emit('on-submit')
    }
  }
}
</script>

<style scoped></style>
