.class public final synthetic Lcom/deepalhome/launcher/settings/FloatingBallSettingsView$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/Object;

.field public final synthetic f$3:Ljava/lang/Object;

.field public final synthetic f$4:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILcom/deepalhome/launcher/accessibility/AccessibilityDaemonService;Ljava/lang/StringBuilder;Ljava/util/List;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/deepalhome/launcher/settings/FloatingBallSettingsView$$ExternalSyntheticLambda7;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/deepalhome/launcher/settings/FloatingBallSettingsView$$ExternalSyntheticLambda7;->f$1:I

    iput-object p4, p0, Lcom/deepalhome/launcher/settings/FloatingBallSettingsView$$ExternalSyntheticLambda7;->f$0:Ljava/lang/Object;

    iput-object p3, p0, Lcom/deepalhome/launcher/settings/FloatingBallSettingsView$$ExternalSyntheticLambda7;->f$2:Ljava/lang/Object;

    iput-object p2, p0, Lcom/deepalhome/launcher/settings/FloatingBallSettingsView$$ExternalSyntheticLambda7;->f$3:Ljava/lang/Object;

    iput-object p5, p0, Lcom/deepalhome/launcher/settings/FloatingBallSettingsView$$ExternalSyntheticLambda7;->f$4:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/deepalhome/launcher/settings/FloatingBallSettingsView;ILjava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/deepalhome/launcher/settings/FloatingBallSettingsView$$ExternalSyntheticLambda7;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/deepalhome/launcher/settings/FloatingBallSettingsView$$ExternalSyntheticLambda7;->f$0:Ljava/lang/Object;

    iput p2, p0, Lcom/deepalhome/launcher/settings/FloatingBallSettingsView$$ExternalSyntheticLambda7;->f$1:I

    iput-object p3, p0, Lcom/deepalhome/launcher/settings/FloatingBallSettingsView$$ExternalSyntheticLambda7;->f$2:Ljava/lang/Object;

    iput-object p4, p0, Lcom/deepalhome/launcher/settings/FloatingBallSettingsView$$ExternalSyntheticLambda7;->f$3:Ljava/lang/Object;

    iput-object p5, p0, Lcom/deepalhome/launcher/settings/FloatingBallSettingsView$$ExternalSyntheticLambda7;->f$4:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment;Ljava/util/List;ILjava/lang/String;Lclub/deepal/launcher3/wallpaper/WallpaperItem;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/deepalhome/launcher/settings/FloatingBallSettingsView$$ExternalSyntheticLambda7;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/deepalhome/launcher/settings/FloatingBallSettingsView$$ExternalSyntheticLambda7;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/deepalhome/launcher/settings/FloatingBallSettingsView$$ExternalSyntheticLambda7;->f$3:Ljava/lang/Object;

    iput p3, p0, Lcom/deepalhome/launcher/settings/FloatingBallSettingsView$$ExternalSyntheticLambda7;->f$1:I

    iput-object p4, p0, Lcom/deepalhome/launcher/settings/FloatingBallSettingsView$$ExternalSyntheticLambda7;->f$2:Ljava/lang/Object;

    iput-object p5, p0, Lcom/deepalhome/launcher/settings/FloatingBallSettingsView$$ExternalSyntheticLambda7;->f$4:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/deepalhome/launcher/settings/FloatingBallSettingsView$$ExternalSyntheticLambda7;->f$2:Ljava/lang/Object;

    iget v1, p0, Lcom/deepalhome/launcher/settings/FloatingBallSettingsView$$ExternalSyntheticLambda7;->f$1:I

    iget-object v2, p0, Lcom/deepalhome/launcher/settings/FloatingBallSettingsView$$ExternalSyntheticLambda7;->f$4:Ljava/lang/Object;

    iget-object v3, p0, Lcom/deepalhome/launcher/settings/FloatingBallSettingsView$$ExternalSyntheticLambda7;->f$3:Ljava/lang/Object;

    iget-object v4, p0, Lcom/deepalhome/launcher/settings/FloatingBallSettingsView$$ExternalSyntheticLambda7;->f$0:Ljava/lang/Object;

    const-string v5, "this$0"

    iget p0, p0, Lcom/deepalhome/launcher/settings/FloatingBallSettingsView$$ExternalSyntheticLambda7;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    sget p0, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment;->$r8$clinit:I

    check-cast v4, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment;

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "$urls"

    check-cast v3, Ljava/util/List;

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "$item"

    check-cast v2, Lclub/deepal/launcher3/wallpaper/WallpaperItem;

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v4}, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment;->releaseMediaPlayer()V

    add-int/lit8 v1, v1, 0x1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v3, v1, v0, v2}, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment;->tryPlayVideo(Ljava/util/List;ILjava/lang/String;Lclub/deepal/launcher3/wallpaper/WallpaperItem;)V

    :goto_0
    return-void

    :pswitch_0
    sget-object p0, Lcom/deepalhome/launcher/accessibility/AccessibilityDaemonService;->Companion:Lcom/deepalhome/launcher/accessibility/AccessibilityDaemonService$Companion;

    const-string p0, "$services"

    check-cast v4, Ljava/util/List;

    invoke-static {p0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "$restoredNames"

    check-cast v0, Ljava/lang/StringBuilder;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v3, Lcom/deepalhome/launcher/accessibility/AccessibilityDaemonService;

    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "$currentServices"

    check-cast v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1, v3, v0, v4, v2}, Lcom/deepalhome/launcher/accessibility/AccessibilityDaemonService;->restoreServicesSequentially$restoreNext(ILcom/deepalhome/launcher/accessibility/AccessibilityDaemonService;Ljava/lang/StringBuilder;Ljava/util/List;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    return-void

    :pswitch_1
    sget p0, Lcom/deepalhome/launcher/settings/FloatingBallSettingsView;->$r8$clinit:I

    check-cast v4, Lcom/deepalhome/launcher/settings/FloatingBallSettingsView;

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "$iconPath"

    check-cast v0, Ljava/lang/String;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget p0, v4, Lcom/deepalhome/launcher/settings/FloatingBallSettingsView;->previewLoadToken:I

    if-eq p0, v1, :cond_1

    goto/16 :goto_2

    :cond_1
    invoke-virtual {v4}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p0

    if-nez p0, :cond_2

    goto/16 :goto_2

    :cond_2
    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/deepalhome/launcher/config/UserConfig;->getFloatingBallIconFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_2

    :cond_3
    check-cast v3, Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_5

    invoke-virtual {v4}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/FloatingBallSettingsViewBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/FloatingBallSettingsViewBinding;->floatingBallIconPreview:Landroid/widget/ImageView;

    invoke-virtual {p0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    instance-of p0, v3, Landroid/graphics/drawable/AnimatedImageDrawable;

    if-eqz p0, :cond_4

    check-cast v3, Landroid/graphics/drawable/AnimatedImageDrawable;

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_9

    const/4 p0, -0x1

    invoke-virtual {v3, p0}, Landroid/graphics/drawable/AnimatedImageDrawable;->setRepeatCount(I)V

    invoke-virtual {v3}, Landroid/graphics/drawable/AnimatedImageDrawable;->start()V

    goto :goto_2

    :cond_5
    check-cast v2, Landroid/graphics/Bitmap;

    if-eqz v2, :cond_6

    invoke-virtual {v4}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/FloatingBallSettingsViewBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/FloatingBallSettingsViewBinding;->floatingBallIconPreview:Landroid/widget/ImageView;

    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_2

    :cond_6
    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/UserConfig;->getFloatingBallIconPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/deepalhome/launcher/config/UserConfig;->setFloatingBallIconPackageName(Ljava/lang/String;)V

    :cond_7
    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/UserConfig;->getFloatingBallIconResId()I

    move-result v0

    const v1, 0x7f08013b

    if-eq v0, v1, :cond_8

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/deepalhome/launcher/config/UserConfig;->setFloatingBallIconResId(I)V

    :cond_8
    invoke-virtual {v4}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/FloatingBallSettingsViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/FloatingBallSettingsViewBinding;->floatingBallIconPreview:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/UserConfig;->getFloatingBallIconResId()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_9
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
