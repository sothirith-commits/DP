.class public final synthetic Lcom/deepalhome/launcher/settings/LayoutSettingsView$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/deepalhome/launcher/settings/LayoutSettingsView;


# direct methods
.method public synthetic constructor <init>(ILcom/deepalhome/launcher/settings/LayoutSettingsView;)V
    .locals 0

    iput p1, p0, Lcom/deepalhome/launcher/settings/LayoutSettingsView$$ExternalSyntheticLambda9;->$r8$classId:I

    iput-object p2, p0, Lcom/deepalhome/launcher/settings/LayoutSettingsView$$ExternalSyntheticLambda9;->f$0:Lcom/deepalhome/launcher/settings/LayoutSettingsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    const/16 p1, 0x64

    const-string v0, "this$0"

    iget-object v1, p0, Lcom/deepalhome/launcher/settings/LayoutSettingsView$$ExternalSyntheticLambda9;->f$0:Lcom/deepalhome/launcher/settings/LayoutSettingsView;

    iget p0, p0, Lcom/deepalhome/launcher/settings/LayoutSettingsView$$ExternalSyntheticLambda9;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    sget p0, Lcom/deepalhome/launcher/settings/LayoutSettingsView;->$r8$clinit:I

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object p0

    const/16 p1, 0x28

    invoke-virtual {p0, p1}, Lcom/deepalhome/launcher/config/UserConfig;->setHudDvrScale(I)V

    invoke-virtual {v1}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->hudDvrScaleSeekbar:Landroid/widget/SeekBar;

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    invoke-virtual {v1}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->hudDvrScaleValueTv:Landroid/widget/TextView;

    sget-object v0, Lcom/deepalhome/launcher/hud/s05dvr/HudDvrConfigHelper;->INSTANCE:Lcom/deepalhome/launcher/hud/s05dvr/HudDvrConfigHelper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/deepalhome/launcher/hud/s05dvr/HudDvrConfigHelper;->formatScale(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object p0, Lcom/deepalhome/launcher/hud/s05dvr/HudDvrManager;->INSTANCE:Lcom/deepalhome/launcher/hud/s05dvr/HudDvrManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/hud/s05dvr/HudDvrManager;->onSettingChanged()V

    return-void

    :pswitch_0
    sget p0, Lcom/deepalhome/launcher/settings/LayoutSettingsView;->$r8$clinit:I

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object p0

    const/16 p1, 0x118

    invoke-virtual {p0, p1}, Lcom/deepalhome/launcher/config/UserConfig;->setHudDvrY(I)V

    invoke-virtual {v1}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->hudDvrPositionYSeekbar:Landroid/widget/SeekBar;

    invoke-virtual {p0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    invoke-virtual {v1}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->hudDvrPositionYValueTv:Landroid/widget/TextView;

    sget-object v0, Lcom/deepalhome/launcher/hud/s05dvr/HudDvrConfigHelper;->INSTANCE:Lcom/deepalhome/launcher/hud/s05dvr/HudDvrConfigHelper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/deepalhome/launcher/hud/s05dvr/HudDvrConfigHelper;->formatPx(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object p0, Lcom/deepalhome/launcher/hud/s05dvr/HudDvrManager;->INSTANCE:Lcom/deepalhome/launcher/hud/s05dvr/HudDvrManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/hud/s05dvr/HudDvrManager;->onSettingChanged()V

    return-void

    :pswitch_1
    sget p0, Lcom/deepalhome/launcher/settings/LayoutSettingsView;->$r8$clinit:I

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object p0

    const/16 p1, 0x1f4

    invoke-virtual {p0, p1}, Lcom/deepalhome/launcher/config/UserConfig;->setHudDvrRightX(I)V

    invoke-virtual {v1}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->hudDvrRightPositionXSeekbar:Landroid/widget/SeekBar;

    invoke-virtual {p0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    invoke-virtual {v1}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->hudDvrRightPositionXValueTv:Landroid/widget/TextView;

    sget-object v0, Lcom/deepalhome/launcher/hud/s05dvr/HudDvrConfigHelper;->INSTANCE:Lcom/deepalhome/launcher/hud/s05dvr/HudDvrConfigHelper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/deepalhome/launcher/hud/s05dvr/HudDvrConfigHelper;->formatPx(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object p0, Lcom/deepalhome/launcher/hud/s05dvr/HudDvrManager;->INSTANCE:Lcom/deepalhome/launcher/hud/s05dvr/HudDvrManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/hud/s05dvr/HudDvrManager;->onSettingChanged()V

    return-void

    :pswitch_2
    sget p0, Lcom/deepalhome/launcher/settings/LayoutSettingsView;->$r8$clinit:I

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object p0

    const/16 p1, 0x2a8

    invoke-virtual {p0, p1}, Lcom/deepalhome/launcher/config/UserConfig;->setHudDvrX(I)V

    invoke-virtual {v1}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->hudDvrPositionXSeekbar:Landroid/widget/SeekBar;

    invoke-virtual {p0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    invoke-virtual {v1}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->hudDvrPositionXValueTv:Landroid/widget/TextView;

    sget-object v0, Lcom/deepalhome/launcher/hud/s05dvr/HudDvrConfigHelper;->INSTANCE:Lcom/deepalhome/launcher/hud/s05dvr/HudDvrConfigHelper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/deepalhome/launcher/hud/s05dvr/HudDvrConfigHelper;->formatPx(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object p0, Lcom/deepalhome/launcher/hud/s05dvr/HudDvrManager;->INSTANCE:Lcom/deepalhome/launcher/hud/s05dvr/HudDvrManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/hud/s05dvr/HudDvrManager;->onSettingChanged()V

    return-void

    :pswitch_3
    sget p0, Lcom/deepalhome/launcher/settings/LayoutSettingsView;->$r8$clinit:I

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object p0

    const/16 p1, 0x23

    invoke-virtual {p0, p1}, Lcom/deepalhome/launcher/config/UserConfig;->setHudSrScale(I)V

    invoke-virtual {v1}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->hudSrScaleSeekbar:Landroid/widget/SeekBar;

    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    invoke-virtual {v1}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->hudSrScaleValueTv:Landroid/widget/TextView;

    sget-object v0, Lcom/deepalhome/launcher/hud/s05sr/HudSRConfigHelper;->INSTANCE:Lcom/deepalhome/launcher/hud/s05sr/HudSRConfigHelper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/deepalhome/launcher/hud/s05sr/HudSRConfigHelper;->formatScale(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object p0, Lcom/deepalhome/launcher/hud/s05sr/HudSRManager;->INSTANCE:Lcom/deepalhome/launcher/hud/s05sr/HudSRManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/hud/s05sr/HudSRManager;->onSettingChanged()V

    return-void

    :pswitch_4
    sget p0, Lcom/deepalhome/launcher/settings/LayoutSettingsView;->$r8$clinit:I

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object p0

    const/16 p1, 0x1c2

    invoke-virtual {p0, p1}, Lcom/deepalhome/launcher/config/UserConfig;->setHudSrY(I)V

    invoke-virtual {v1}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->hudSrPositionYSeekbar:Landroid/widget/SeekBar;

    invoke-virtual {p0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    invoke-virtual {v1}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->hudSrPositionYValueTv:Landroid/widget/TextView;

    sget-object v0, Lcom/deepalhome/launcher/hud/s05sr/HudSRConfigHelper;->INSTANCE:Lcom/deepalhome/launcher/hud/s05sr/HudSRConfigHelper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/deepalhome/launcher/hud/s05sr/HudSRConfigHelper;->formatPx(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object p0, Lcom/deepalhome/launcher/hud/s05sr/HudSRManager;->INSTANCE:Lcom/deepalhome/launcher/hud/s05sr/HudSRManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/hud/s05sr/HudSRManager;->onSettingChanged()V

    return-void

    :pswitch_5
    sget p0, Lcom/deepalhome/launcher/settings/LayoutSettingsView;->$r8$clinit:I

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object p0

    const/16 p1, 0x26c

    invoke-virtual {p0, p1}, Lcom/deepalhome/launcher/config/UserConfig;->setHudSrX(I)V

    invoke-virtual {v1}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->hudSrPositionXSeekbar:Landroid/widget/SeekBar;

    invoke-virtual {p0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    invoke-virtual {v1}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->hudSrPositionXValueTv:Landroid/widget/TextView;

    sget-object v0, Lcom/deepalhome/launcher/hud/s05sr/HudSRConfigHelper;->INSTANCE:Lcom/deepalhome/launcher/hud/s05sr/HudSRConfigHelper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/deepalhome/launcher/hud/s05sr/HudSRConfigHelper;->formatPx(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object p0, Lcom/deepalhome/launcher/hud/s05sr/HudSRManager;->INSTANCE:Lcom/deepalhome/launcher/hud/s05sr/HudSRManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/hud/s05sr/HudSRManager;->onSettingChanged()V

    return-void

    :pswitch_6
    sget p0, Lcom/deepalhome/launcher/settings/LayoutSettingsView;->$r8$clinit:I

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/deepalhome/launcher/config/UserConfig;->setHudNaviAssistAlpha(I)V

    invoke-virtual {v1}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->hudNaviAssistAlphaSeekbar:Landroid/widget/SeekBar;

    const/16 p1, 0x1e

    invoke-virtual {p0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    invoke-virtual {v1}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->hudNaviAssistAlphaValueTv:Landroid/widget/TextView;

    const-string p1, "100%"

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object p0, Lcom/deepalhome/launcher/hud/s05eta/HudNaviManager;->INSTANCE:Lcom/deepalhome/launcher/hud/s05eta/HudNaviManager;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/deepalhome/launcher/hud/s05eta/HudNaviManager;->onSettingChanged(Landroid/content/Context;)V

    return-void

    :pswitch_7
    sget p0, Lcom/deepalhome/launcher/settings/LayoutSettingsView;->$r8$clinit:I

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object p0

    const/16 p1, 0x10

    invoke-virtual {p0, p1}, Lcom/deepalhome/launcher/config/UserConfig;->setHudNaviAssistTextSize(I)V

    invoke-virtual {v1}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->hudNaviAssistTextSizeSeekbar:Landroid/widget/SeekBar;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    invoke-virtual {v1}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->hudNaviAssistTextSizeValueTv:Landroid/widget/TextView;

    const-string p1, "16sp"

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object p0, Lcom/deepalhome/launcher/hud/s05eta/HudNaviManager;->INSTANCE:Lcom/deepalhome/launcher/hud/s05eta/HudNaviManager;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/deepalhome/launcher/hud/s05eta/HudNaviManager;->onSettingChanged(Landroid/content/Context;)V

    return-void

    :pswitch_8
    sget p0, Lcom/deepalhome/launcher/settings/LayoutSettingsView;->$r8$clinit:I

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/deepalhome/launcher/config/UserConfig;->setHudNaviAssistY(I)V

    invoke-virtual {v1}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->hudNaviAssistPositionYSeekbar:Landroid/widget/SeekBar;

    invoke-virtual {p0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    invoke-virtual {v1}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->hudNaviAssistPositionYValueTv:Landroid/widget/TextView;

    sget-object v0, Lcom/deepalhome/launcher/hud/s05eta/HudNaviAssistConfigHelper;->INSTANCE:Lcom/deepalhome/launcher/hud/s05eta/HudNaviAssistConfigHelper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/deepalhome/launcher/hud/s05eta/HudNaviAssistConfigHelper;->formatPercent(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object p0, Lcom/deepalhome/launcher/hud/s05eta/HudNaviManager;->INSTANCE:Lcom/deepalhome/launcher/hud/s05eta/HudNaviManager;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/deepalhome/launcher/hud/s05eta/HudNaviManager;->onSettingChanged(Landroid/content/Context;)V

    return-void

    :pswitch_9
    sget p0, Lcom/deepalhome/launcher/settings/LayoutSettingsView;->$r8$clinit:I

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object p0

    const/16 p1, 0x32

    invoke-virtual {p0, p1}, Lcom/deepalhome/launcher/config/UserConfig;->setHudNaviAssistX(I)V

    invoke-virtual {v1}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->hudNaviAssistPositionXSeekbar:Landroid/widget/SeekBar;

    invoke-virtual {p0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    invoke-virtual {v1}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->hudNaviAssistPositionXValueTv:Landroid/widget/TextView;

    sget-object v0, Lcom/deepalhome/launcher/hud/s05eta/HudNaviAssistConfigHelper;->INSTANCE:Lcom/deepalhome/launcher/hud/s05eta/HudNaviAssistConfigHelper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/deepalhome/launcher/hud/s05eta/HudNaviAssistConfigHelper;->formatPercent(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object p0, Lcom/deepalhome/launcher/hud/s05eta/HudNaviManager;->INSTANCE:Lcom/deepalhome/launcher/hud/s05eta/HudNaviManager;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/deepalhome/launcher/hud/s05eta/HudNaviManager;->onSettingChanged(Landroid/content/Context;)V

    return-void

    :pswitch_a
    sget p0, Lcom/deepalhome/launcher/settings/LayoutSettingsView;->$r8$clinit:I

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object p0

    const/16 p1, 0x1a

    invoke-virtual {p0, p1}, Lcom/deepalhome/launcher/config/UserConfig;->setHudLyricsTextSize(I)V

    invoke-virtual {v1}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->hudTextSizeSeekbar:Landroid/widget/SeekBar;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    invoke-virtual {v1}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->hudTextSizeValueTv:Landroid/widget/TextView;

    const-string p1, "26sp"

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object p0, Lcom/deepalhome/launcher/hud/HudFloatManager;->INSTANCE:Lcom/deepalhome/launcher/hud/HudFloatManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/hud/HudFloatManager;->applySettingsToView()V

    return-void

    :pswitch_b
    sget p0, Lcom/deepalhome/launcher/settings/LayoutSettingsView;->$r8$clinit:I

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object p0

    const/16 p1, 0x4b

    invoke-virtual {p0, p1}, Lcom/deepalhome/launcher/config/UserConfig;->setHudLyricsY(I)V

    invoke-virtual {v1}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->hudPositionYSeekbar:Landroid/widget/SeekBar;

    invoke-virtual {p0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    invoke-virtual {v1}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->hudPositionYValueTv:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object p0, Lcom/deepalhome/launcher/hud/HudFloatManager;->INSTANCE:Lcom/deepalhome/launcher/hud/HudFloatManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/hud/HudFloatManager;->updatePosition()V

    return-void

    :pswitch_c
    sget p0, Lcom/deepalhome/launcher/settings/LayoutSettingsView;->$r8$clinit:I

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object p0

    const/16 p1, 0xaf

    invoke-virtual {p0, p1}, Lcom/deepalhome/launcher/config/UserConfig;->setHudLyricsX(I)V

    invoke-virtual {v1}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->hudPositionXSeekbar:Landroid/widget/SeekBar;

    invoke-virtual {p0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    invoke-virtual {v1}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->hudPositionXValueTv:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object p0, Lcom/deepalhome/launcher/hud/HudFloatManager;->INSTANCE:Lcom/deepalhome/launcher/hud/HudFloatManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/hud/HudFloatManager;->updatePosition()V

    return-void

    :pswitch_d
    sget p0, Lcom/deepalhome/launcher/settings/LayoutSettingsView;->$r8$clinit:I

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/UserConfig;->getHudDvrEnabled()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->hudDvrPreviewStartBtn:Landroid/widget/TextView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    sget-object p0, Lcom/deepalhome/launcher/hud/s05dvr/HudDvrManager;->INSTANCE:Lcom/deepalhome/launcher/hud/s05dvr/HudDvrManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x1

    sput-boolean p0, Lcom/deepalhome/launcher/hud/s05dvr/HudDvrManager;->isSettingsPreviewEnabled:Z

    new-instance p1, Lcom/deepalhome/launcher/hud/s05dvr/HudDvrManager$setSettingsPreviewEnabled$1;

    invoke-direct {p1, p0}, Lcom/deepalhome/launcher/hud/s05dvr/HudDvrManager$setSettingsPreviewEnabled$1;-><init>(Z)V

    invoke-static {p1}, Lcom/deepalhome/launcher/hud/s05dvr/HudDvrManager;->dispatchOnMain(Lkotlin/jvm/functions/Function0;)V

    invoke-static {}, Lcom/deepalhome/launcher/hud/s05dvr/HudDvrManager;->onSettingChanged()V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
