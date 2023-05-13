import QVBoxLayout,QFrame,QGridLayout,QLabel,QLineEdit,QSpacerItem,QComboBox,QAction
type UI_UserForm* = ref object of RootObj
  verticalLayout: QVBoxLayout
  frame: QFrame
  verticalLayout_2: QVBoxLayout
  gridLayout_2: QGridLayout
  label_2: QLabel
  txt_login: QLineEdit
  txt_pass: QLineEdit
  label: QLabel
  label_3: QLabel
  horizontalSpacer_2: QSpacerItem
  txt_name: QLineEdit
  horizontalSpacer: QSpacerItem
  label_4: QLabel
  cmb_group: QComboBox
  label_9: QLabel
  txt_pass2 : QLineEdit
  verticalSpacer: QSpacerItem
  ac_new: QAction
  ac_edit: QAction
  ac_delete: QAction
  ac_groups: QAction
  ac_save: QAction
  ac_cancel: QAction

