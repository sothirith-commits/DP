.class public final synthetic Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog;I)V
    .locals 0

    iput p2, p0, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog$$ExternalSyntheticLambda0;->f$0:Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget p1, p0, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    const-string p1, "this$0"

    iget-object p0, p0, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog$$ExternalSyntheticLambda0;->f$0:Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog;

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog;->dialog:Landroid/app/Dialog;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void

    :cond_0
    const-string p0, "dialog"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :pswitch_0
    iget-object p0, p0, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog$$ExternalSyntheticLambda0;->f$0:Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog;

    const-string p1, "this$0"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog;->tempEventActions:Ljava/util/LinkedHashMap;

    iget-object v0, p0, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog;->currentTab:Lcom/deepalhome/tuotuotie/EventType;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog;->autoSave()V

    return-void

    :pswitch_1
    const-string p1, "this$0"

    iget-object p0, p0, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog$$ExternalSyntheticLambda0;->f$0:Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog;

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p1, Lcom/deepalhome/tuotuotie/EventType;->LONG_PRESS:Lcom/deepalhome/tuotuotie/EventType;

    invoke-virtual {p0, p1}, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog;->switchTab(Lcom/deepalhome/tuotuotie/EventType;)V

    return-void

    :pswitch_2
    const-string p1, "this$0"

    iget-object p0, p0, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog$$ExternalSyntheticLambda0;->f$0:Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog;

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p1, Lcom/deepalhome/tuotuotie/EventType;->ROTATE_CW:Lcom/deepalhome/tuotuotie/EventType;

    invoke-virtual {p0, p1}, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog;->switchTab(Lcom/deepalhome/tuotuotie/EventType;)V

    return-void

    :pswitch_3
    const-string p1, "this$0"

    iget-object p0, p0, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog$$ExternalSyntheticLambda0;->f$0:Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog;

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p1, Lcom/deepalhome/tuotuotie/EventType;->DOUBLE_CLICK:Lcom/deepalhome/tuotuotie/EventType;

    invoke-virtual {p0, p1}, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog;->switchTab(Lcom/deepalhome/tuotuotie/EventType;)V

    return-void

    :pswitch_4
    const-string p1, "this$0"

    iget-object p0, p0, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog$$ExternalSyntheticLambda0;->f$0:Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog;

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p1, Lcom/deepalhome/tuotuotie/EventType;->CLICK:Lcom/deepalhome/tuotuotie/EventType;

    invoke-virtual {p0, p1}, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog;->switchTab(Lcom/deepalhome/tuotuotie/EventType;)V

    return-void

    :pswitch_5
    const-string p1, "this$0"

    iget-object p0, p0, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog$$ExternalSyntheticLambda0;->f$0:Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog;

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog;->binding:Lcom/deepalhome/launcher/databinding/BleDeviceConfigDialogBinding;

    const/4 v0, 0x0

    const-string v1, "binding"

    if-eqz p1, :cond_4

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/BleDeviceConfigDialogBinding;->titleTv:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog;->binding:Lcom/deepalhome/launcher/databinding/BleDeviceConfigDialogBinding;

    if-eqz p1, :cond_3

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/BleDeviceConfigDialogBinding;->titleEditEt:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog;->binding:Lcom/deepalhome/launcher/databinding/BleDeviceConfigDialogBinding;

    if-eqz p1, :cond_2

    iget-object v1, p1, Lcom/deepalhome/launcher/databinding/BleDeviceConfigDialogBinding;->titleTv:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/BleDeviceConfigDialogBinding;->titleEditEt:Landroid/widget/EditText;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog;->titleInputInteraction:Lcom/deepalhome/launcher/util/DialogInputInteractionController;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/deepalhome/launcher/util/DialogInputInteractionController;->showKeyboard()V

    return-void

    :cond_1
    const-string p0, "titleInputInteraction"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_4
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
