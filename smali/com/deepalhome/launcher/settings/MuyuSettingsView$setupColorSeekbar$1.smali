.class public final Lcom/deepalhome/launcher/settings/MuyuSettingsView$setupColorSeekbar$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic $userConfig:Lcom/deepalhome/launcher/config/UserConfig;

.field public final synthetic this$0:Lcom/deepalhome/launcher/settings/MuyuSettingsView;


# direct methods
.method public synthetic constructor <init>(Lcom/deepalhome/launcher/config/UserConfig;Lcom/deepalhome/launcher/settings/MuyuSettingsView;I)V
    .locals 0

    iput p3, p0, Lcom/deepalhome/launcher/settings/MuyuSettingsView$setupColorSeekbar$1;->$r8$classId:I

    iput-object p1, p0, Lcom/deepalhome/launcher/settings/MuyuSettingsView$setupColorSeekbar$1;->$userConfig:Lcom/deepalhome/launcher/config/UserConfig;

    iput-object p2, p0, Lcom/deepalhome/launcher/settings/MuyuSettingsView$setupColorSeekbar$1;->this$0:Lcom/deepalhome/launcher/settings/MuyuSettingsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final onStartTrackingTouch$com$deepalhome$launcher$settings$MuyuSettingsView$setupColorSeekbar$1(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method private final onStartTrackingTouch$com$deepalhome$launcher$settings$MuyuSettingsView$setupMuyuSettings$3(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method private final onStartTrackingTouch$com$deepalhome$launcher$settings$MuyuSettingsView$setupMuyuSettings$4(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method private final onStopTrackingTouch$com$deepalhome$launcher$settings$MuyuSettingsView$setupColorSeekbar$1(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method private final onStopTrackingTouch$com$deepalhome$launcher$settings$MuyuSettingsView$setupMuyuSettings$3(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method private final onStopTrackingTouch$com$deepalhome$launcher$settings$MuyuSettingsView$setupMuyuSettings$4(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2

    const/4 p1, 0x1

    iget-object v0, p0, Lcom/deepalhome/launcher/settings/MuyuSettingsView$setupColorSeekbar$1;->this$0:Lcom/deepalhome/launcher/settings/MuyuSettingsView;

    iget-object v1, p0, Lcom/deepalhome/launcher/settings/MuyuSettingsView$setupColorSeekbar$1;->$userConfig:Lcom/deepalhome/launcher/config/UserConfig;

    iget p0, p0, Lcom/deepalhome/launcher/settings/MuyuSettingsView$setupColorSeekbar$1;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    const/16 p0, 0xa

    const/16 p1, 0x64

    invoke-static {p2, p0, p1}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(III)I

    move-result p2

    invoke-virtual {v1, p2}, Lcom/deepalhome/launcher/config/UserConfig;->setMuyuAlpha(I)V

    invoke-virtual {v0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p3

    check-cast p3, Lcom/deepalhome/launcher/databinding/MuyuSettingsViewBinding;

    iget-object p3, p3, Lcom/deepalhome/launcher/databinding/MuyuSettingsViewBinding;->muyuOpacityValueTv:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object p3, Lcom/deepalhome/launcher/floating/MuyuFloatingWindow;->INSTANCE:Lcom/deepalhome/launcher/floating/MuyuFloatingWindow;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p3, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p3}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object p3

    invoke-static {p2, p0, p1}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(III)I

    move-result p0

    invoke-virtual {p3, p0}, Lcom/deepalhome/launcher/config/UserConfig;->setMuyuAlpha(I)V

    invoke-static {}, Lcom/deepalhome/launcher/floating/MuyuFloatingWindow;->applyViewConfig()V

    :goto_0
    return-void

    :pswitch_0
    if-nez p3, :cond_1

    goto :goto_1

    :cond_1
    const/16 p0, 0x50

    const/16 p1, 0xc8

    invoke-static {p2, p0, p1}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(III)I

    move-result p2

    invoke-virtual {v1, p2}, Lcom/deepalhome/launcher/config/UserConfig;->setMuyuSize(I)V

    invoke-virtual {v0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p3

    check-cast p3, Lcom/deepalhome/launcher/databinding/MuyuSettingsViewBinding;

    iget-object p3, p3, Lcom/deepalhome/launcher/databinding/MuyuSettingsViewBinding;->muyuSizeValueTv:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "dp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object p3, Lcom/deepalhome/launcher/floating/MuyuFloatingWindow;->INSTANCE:Lcom/deepalhome/launcher/floating/MuyuFloatingWindow;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2, p0, p1}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(III)I

    move-result p0

    sget-object p1, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p1}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/deepalhome/launcher/config/UserConfig;->setMuyuSize(I)V

    invoke-static {}, Lcom/deepalhome/launcher/floating/MuyuFloatingWindow;->applyViewConfig()V

    :goto_1
    return-void

    :pswitch_1
    if-nez p3, :cond_2

    goto :goto_3

    :cond_2
    if-nez p2, :cond_3

    const/4 p0, -0x1

    invoke-virtual {v1, p0}, Lcom/deepalhome/launcher/config/UserConfig;->setMuyuColor(I)V

    invoke-virtual {v0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/deepalhome/launcher/databinding/MuyuSettingsViewBinding;

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/MuyuSettingsViewBinding;->muyuColorValueTv:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const p3, 0x7f13037d

    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, p0}, Lcom/deepalhome/launcher/settings/MuyuSettingsView;->updateColorPreview(I)V

    goto :goto_2

    :cond_3
    sub-int/2addr p2, p1

    int-to-float p0, p2

    const/4 p2, 0x3

    new-array p2, p2, [F

    const/4 p3, 0x0

    aput p0, p2, p3

    const p3, 0x3f333333    # 0.7f

    aput p3, p2, p1

    const/high16 p1, 0x3f800000    # 1.0f

    const/4 p3, 0x2

    aput p1, p2, p3

    invoke-static {p2}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/deepalhome/launcher/config/UserConfig;->setMuyuColor(I)V

    invoke-virtual {v0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p2

    check-cast p2, Lcom/deepalhome/launcher/databinding/MuyuSettingsViewBinding;

    iget-object p2, p2, Lcom/deepalhome/launcher/databinding/MuyuSettingsViewBinding;->muyuColorValueTv:Landroid/widget/TextView;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    float-to-int p0, p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0xb0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, p1}, Lcom/deepalhome/launcher/settings/MuyuSettingsView;->updateColorPreview(I)V

    :goto_2
    sget-object p0, Lcom/deepalhome/launcher/floating/MuyuFloatingWindow;->INSTANCE:Lcom/deepalhome/launcher/floating/MuyuFloatingWindow;

    invoke-virtual {v1}, Lcom/deepalhome/launcher/config/UserConfig;->getMuyuColor()I

    move-result p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/deepalhome/launcher/config/UserConfig;->setMuyuColor(I)V

    invoke-static {}, Lcom/deepalhome/launcher/floating/MuyuFloatingWindow;->applyTheme()V

    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    iget p0, p0, Lcom/deepalhome/launcher/settings/MuyuSettingsView$setupColorSeekbar$1;->$r8$classId:I

    return-void
.end method

.method public final onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    iget p0, p0, Lcom/deepalhome/launcher/settings/MuyuSettingsView$setupColorSeekbar$1;->$r8$classId:I

    return-void
.end method
