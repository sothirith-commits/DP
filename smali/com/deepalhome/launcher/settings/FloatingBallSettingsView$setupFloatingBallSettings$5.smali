.class public final Lcom/deepalhome/launcher/settings/FloatingBallSettingsView$setupFloatingBallSettings$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic $userConfig:Lcom/deepalhome/launcher/config/UserConfig;

.field public final synthetic this$0:Lcom/deepalhome/launcher/settings/FloatingBallSettingsView;


# direct methods
.method public synthetic constructor <init>(Lcom/deepalhome/launcher/config/UserConfig;Lcom/deepalhome/launcher/settings/FloatingBallSettingsView;I)V
    .locals 0

    iput p3, p0, Lcom/deepalhome/launcher/settings/FloatingBallSettingsView$setupFloatingBallSettings$5;->$r8$classId:I

    iput-object p1, p0, Lcom/deepalhome/launcher/settings/FloatingBallSettingsView$setupFloatingBallSettings$5;->$userConfig:Lcom/deepalhome/launcher/config/UserConfig;

    iput-object p2, p0, Lcom/deepalhome/launcher/settings/FloatingBallSettingsView$setupFloatingBallSettings$5;->this$0:Lcom/deepalhome/launcher/settings/FloatingBallSettingsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final onStartTrackingTouch$com$deepalhome$launcher$settings$FloatingBallSettingsView$setupFloatingBallSettings$5(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method private final onStartTrackingTouch$com$deepalhome$launcher$settings$FloatingBallSettingsView$setupFloatingBallSettings$6(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method private final onStopTrackingTouch$com$deepalhome$launcher$settings$FloatingBallSettingsView$setupFloatingBallSettings$5(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method private final onStopTrackingTouch$com$deepalhome$launcher$settings$FloatingBallSettingsView$setupFloatingBallSettings$6(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2

    iget p1, p0, Lcom/deepalhome/launcher/settings/FloatingBallSettingsView$setupFloatingBallSettings$5;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/deepalhome/launcher/settings/FloatingBallSettingsView$setupFloatingBallSettings$5;->$userConfig:Lcom/deepalhome/launcher/config/UserConfig;

    invoke-virtual {p1, p2}, Lcom/deepalhome/launcher/config/UserConfig;->setFloatingBallAlpha(I)V

    iget-object p0, p0, Lcom/deepalhome/launcher/settings/FloatingBallSettingsView$setupFloatingBallSettings$5;->this$0:Lcom/deepalhome/launcher/settings/FloatingBallSettingsView;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/FloatingBallSettingsViewBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/FloatingBallSettingsViewBinding;->floatingBallOpacityValueTv:Landroid/widget/TextView;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p3, 0x25

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object p0, Lcom/deepalhome/launcher/floating/FloatingBallWindow;->INSTANCE:Lcom/deepalhome/launcher/floating/FloatingBallWindow;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/deepalhome/launcher/config/UserConfig;->setFloatingBallAlpha(I)V

    invoke-static {}, Lcom/deepalhome/launcher/floating/FloatingBallWindow;->applyBallConfig()V

    :goto_0
    return-void

    :pswitch_0
    if-nez p3, :cond_1

    goto :goto_1

    :cond_1
    const/16 p1, 0x40

    const/16 p3, 0xf0

    invoke-static {p2, p1, p3}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(III)I

    move-result p2

    iget-object v0, p0, Lcom/deepalhome/launcher/settings/FloatingBallSettingsView$setupFloatingBallSettings$5;->$userConfig:Lcom/deepalhome/launcher/config/UserConfig;

    invoke-virtual {v0, p2}, Lcom/deepalhome/launcher/config/UserConfig;->setFloatingBallSize(I)V

    iget-object p0, p0, Lcom/deepalhome/launcher/settings/FloatingBallSettingsView$setupFloatingBallSettings$5;->this$0:Lcom/deepalhome/launcher/settings/FloatingBallSettingsView;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/FloatingBallSettingsViewBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/FloatingBallSettingsViewBinding;->floatingBallSizeValueTv:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "dp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object p0, Lcom/deepalhome/launcher/floating/FloatingBallWindow;->INSTANCE:Lcom/deepalhome/launcher/floating/FloatingBallWindow;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2, p1, p3}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(III)I

    move-result p0

    sget-object p1, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p1}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/deepalhome/launcher/config/UserConfig;->setFloatingBallSize(I)V

    invoke-static {}, Lcom/deepalhome/launcher/floating/FloatingBallWindow;->applyBallConfig()V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    iget p0, p0, Lcom/deepalhome/launcher/settings/FloatingBallSettingsView$setupFloatingBallSettings$5;->$r8$classId:I

    return-void
.end method

.method public final onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    iget p0, p0, Lcom/deepalhome/launcher/settings/FloatingBallSettingsView$setupFloatingBallSettings$5;->$r8$classId:I

    return-void
.end method
