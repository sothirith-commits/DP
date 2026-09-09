.class public final synthetic Lcom/deepalhome/launcher/settings/BleSettingsView$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/deepalhome/launcher/settings/BleSettingsView$$ExternalSyntheticLambda8;->$r8$classId:I

    iput-object p2, p0, Lcom/deepalhome/launcher/settings/BleSettingsView$$ExternalSyntheticLambda8;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 15

    move-object v0, p0

    move/from16 v1, p2

    const/16 v2, 0x42

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x6

    iget-object v7, v0, Lcom/deepalhome/launcher/settings/BleSettingsView$$ExternalSyntheticLambda8;->f$0:Ljava/lang/Object;

    iget v0, v0, Lcom/deepalhome/launcher/settings/BleSettingsView$$ExternalSyntheticLambda8;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "$this_apply"

    check-cast v7, Landroid/widget/EditText;

    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    if-ne v1, v6, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->clearFocus()V

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v1, :cond_0

    move-object v3, v0

    check-cast v3, Landroid/view/inputmethod/InputMethodManager;

    :cond_0
    if-eqz v3, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v3, v0, v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0

    :cond_1
    move v4, v5

    :cond_2
    :goto_0
    return v4

    :pswitch_0
    if-eqz p3, :cond_3

    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    if-ne v0, v2, :cond_3

    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_3

    move v0, v4

    goto :goto_1

    :cond_3
    move v0, v5

    :goto_1
    if-eq v1, v6, :cond_4

    if-nez v0, :cond_4

    move v4, v5

    goto :goto_2

    :cond_4
    check-cast v7, Landroid/widget/Button;

    invoke-virtual {v7}, Landroid/view/View;->performClick()Z

    :goto_2
    return v4

    :pswitch_1
    const-string v0, "$taskNameInputInteraction"

    check-cast v7, Lcom/deepalhome/launcher/util/DialogInputInteractionController;

    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz p3, :cond_5

    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    if-ne v0, v2, :cond_5

    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_5

    move v0, v4

    goto :goto_3

    :cond_5
    move v0, v5

    :goto_3
    if-eq v1, v6, :cond_6

    if-nez v0, :cond_6

    move v4, v5

    goto :goto_4

    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->clearFocus()V

    invoke-virtual {v7}, Lcom/deepalhome/launcher/util/DialogInputInteractionController;->hideKeyboard()V

    :goto_4
    return v4

    :pswitch_2
    check-cast v7, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog;

    const-string v0, "this$0"

    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    if-ne v1, v6, :cond_c

    iget-object v0, v7, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog;->binding:Lcom/deepalhome/launcher/databinding/BleDeviceConfigDialogBinding;

    const-string v1, "binding"

    if-eqz v0, :cond_b

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/BleDeviceConfigDialogBinding;->titleEditEt:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, v7, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog;->binding:Lcom/deepalhome/launcher/databinding/BleDeviceConfigDialogBinding;

    if-eqz v2, :cond_a

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/BleDeviceConfigDialogBinding;->titleEditEt:Landroid/widget/EditText;

    const/16 v6, 0x8

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, v7, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog;->binding:Lcom/deepalhome/launcher/databinding/BleDeviceConfigDialogBinding;

    if-eqz v2, :cond_9

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/BleDeviceConfigDialogBinding;->titleTv:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, v7, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog;->titleInputInteraction:Lcom/deepalhome/launcher/util/DialogInputInteractionController;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Lcom/deepalhome/launcher/util/DialogInputInteractionController;->hideKeyboard()V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_d

    iget-object v2, v7, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog;->device:Lcom/deepalhome/tuotuotie/BleDevice;

    iget-object v5, v2, Lcom/deepalhome/tuotuotie/BleDevice;->nickname:Ljava/lang/String;

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d

    iget-object v5, v2, Lcom/deepalhome/tuotuotie/BleDevice;->name:Ljava/lang/String;

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d

    const/4 v11, 0x0

    const/16 v14, 0x3b

    iget-object v8, v7, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog;->device:Lcom/deepalhome/tuotuotie/BleDevice;

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v10, v0

    invoke-static/range {v8 .. v14}, Lcom/deepalhome/tuotuotie/BleDevice;->copy$default(Lcom/deepalhome/tuotuotie/BleDevice;Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;Lcom/deepalhome/tuotuotie/BleConnectionState;I)Lcom/deepalhome/tuotuotie/BleDevice;

    move-result-object v5

    sget-object v6, Lcom/deepalhome/tuotuotie/Tuotuotie;->INSTANCE:Lcom/deepalhome/tuotuotie/Tuotuotie;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5}, Lcom/deepalhome/tuotuotie/Tuotuotie;->updateDevice(Lcom/deepalhome/tuotuotie/BleDevice;)V

    iget-object v6, v7, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog;->binding:Lcom/deepalhome/launcher/databinding/BleDeviceConfigDialogBinding;

    if-eqz v6, :cond_7

    iget-object v1, v6, Lcom/deepalhome/launcher/databinding/BleDeviceConfigDialogBinding;->titleTv:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v7, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog;->onSave:Lkotlin/jvm/functions/Function1;

    invoke-interface {v1, v5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v0, v2, Lcom/deepalhome/tuotuotie/BleDevice;->nickname:Ljava/lang/String;

    goto :goto_5

    :cond_7
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    :cond_8
    const-string v0, "titleInputInteraction"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    :cond_9
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    :cond_a
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    :cond_b
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    :cond_c
    move v4, v5

    :cond_d
    :goto_5
    return v4

    :pswitch_3
    sget v0, Lcom/deepalhome/launcher/settings/BleSettingsView;->$r8$clinit:I

    const-string v0, "$submitRename"

    check-cast v7, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    if-ne v1, v6, :cond_e

    invoke-interface {v7}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    goto :goto_6

    :cond_e
    move v4, v5

    :goto_6
    return v4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
