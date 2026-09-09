.class public final synthetic Lcom/deepalhome/launcher/settings/SettingsFragment$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/deepalhome/launcher/settings/SettingsFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/deepalhome/launcher/settings/SettingsFragment;I)V
    .locals 0

    iput p2, p0, Lcom/deepalhome/launcher/settings/SettingsFragment$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/deepalhome/launcher/settings/SettingsFragment$$ExternalSyntheticLambda1;->f$0:Lcom/deepalhome/launcher/settings/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    iget p1, p0, Lcom/deepalhome/launcher/settings/SettingsFragment$$ExternalSyntheticLambda1;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    const-string p1, "this$0"

    iget-object p0, p0, Lcom/deepalhome/launcher/settings/SettingsFragment$$ExternalSyntheticLambda1;->f$0:Lcom/deepalhome/launcher/settings/SettingsFragment;

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Lcom/deepalhome/launcher/settings/SettingsSecretState;->INSTANCE:Lcom/deepalhome/launcher/settings/SettingsSecretState;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/deepalhome/launcher/settings/SettingsSecretState;->scheduledTaskMagiskReveal:Lcom/deepalhome/launcher/settings/HiddenTapReveal;

    iget-boolean p1, p0, Lcom/deepalhome/launcher/settings/HiddenTapReveal;->isRevealed:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/deepalhome/launcher/settings/HiddenTapReveal;->tapCount:I

    const/4 p2, 0x1

    add-int/2addr p1, p2

    iput p1, p0, Lcom/deepalhome/launcher/settings/HiddenTapReveal;->tapCount:I

    iget v0, p0, Lcom/deepalhome/launcher/settings/HiddenTapReveal;->requiredTapCount:I

    if-lt p1, v0, :cond_1

    iput-boolean p2, p0, Lcom/deepalhome/launcher/settings/HiddenTapReveal;->isRevealed:Z

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0

    :pswitch_0
    iget-object p0, p0, Lcom/deepalhome/launcher/settings/SettingsFragment$$ExternalSyntheticLambda1;->f$0:Lcom/deepalhome/launcher/settings/SettingsFragment;

    const-string p1, "this$0"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_4

    sget-object p1, Lcom/deepalhome/launcher/settings/SettingsSecretState;->INSTANCE:Lcom/deepalhome/launcher/settings/SettingsSecretState;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/deepalhome/launcher/settings/SettingsSecretState;->debugLogReveal:Lcom/deepalhome/launcher/settings/HiddenTapReveal;

    iget-boolean v0, p1, Lcom/deepalhome/launcher/settings/HiddenTapReveal;->isRevealed:Z

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    iget v0, p1, Lcom/deepalhome/launcher/settings/HiddenTapReveal;->tapCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p1, Lcom/deepalhome/launcher/settings/HiddenTapReveal;->tapCount:I

    iget v2, p1, Lcom/deepalhome/launcher/settings/HiddenTapReveal;->requiredTapCount:I

    if-lt v0, v2, :cond_3

    iput-boolean v1, p1, Lcom/deepalhome/launcher/settings/HiddenTapReveal;->isRevealed:Z

    :cond_3
    iget-boolean p1, p1, Lcom/deepalhome/launcher/settings/HiddenTapReveal;->isRevealed:Z

    if-eqz p1, :cond_4

    :goto_1
    iget-object p0, p0, Lcom/deepalhome/launcher/settings/SettingsFragment;->advancedSettingsView$delegate:Lkotlin/SynchronizedLazyImpl;

    invoke-virtual {p0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;->debugLogCard:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    return p2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
