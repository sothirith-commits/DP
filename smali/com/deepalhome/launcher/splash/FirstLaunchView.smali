.class public final Lcom/deepalhome/launcher/splash/FirstLaunchView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field private final binding:Lcom/deepalhome/launcher/databinding/FirstLaunchViewBinding;

.field private completedNotified:Z

.field private currentStep:Lcom/deepalhome/launcher/splash/FirstLaunchView$Step;

.field private final dialogBinding:Lcom/deepalhome/launcher/databinding/DialogViewBinding;

.field private final initCarBinding:Lcom/deepalhome/launcher/databinding/InitCarDialogBinding;

.field private onCompleted:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0;"
        }
    .end annotation
.end field

.field private final uiModeListener:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1;"
        }
    .end annotation
.end field

.field private uiModeListenerRegistered:Z


# direct methods
.method public static synthetic $r8$lambda$9tsHsaNxxdalGj3QzBJSUTRqEeI(Lkotlin/jvm/functions/Function0;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/deepalhome/launcher/splash/FirstLaunchView;->showDialog$lambda$4(Lkotlin/jvm/functions/Function0;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RX73QL4m3tC6Y2waYgWANQm12c8(Lcom/deepalhome/launcher/splash/FirstLaunchView;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/deepalhome/launcher/splash/FirstLaunchView;->setupInitCar$lambda$6(Lcom/deepalhome/launcher/splash/FirstLaunchView;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UmTzi59d_oZWckcYLvl6Sqlck1U(Lcom/deepalhome/launcher/splash/FirstLaunchView;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/deepalhome/launcher/splash/FirstLaunchView;->setupInitCar$lambda$5(Lcom/deepalhome/launcher/splash/FirstLaunchView;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yXif4XJ_3nnxMuk5N70yiVTwNYg(Lkotlin/jvm/functions/Function0;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/deepalhome/launcher/splash/FirstLaunchView;->showDialog$lambda$3(Lkotlin/jvm/functions/Function0;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1, v0}, Lcom/deepalhome/launcher/splash/FirstLaunchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    const-string v0, "context"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/deepalhome/launcher/databinding/FirstLaunchViewBinding;->$r8$clinit:I

    sget-object v0, Landroidx/databinding/DataBindingUtil;->sMapper:Landroidx/databinding/DataBinderMapperImpl;

    const v0, 0x7f0e0058

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p2, v0, p0, v1, v2}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p2

    check-cast p2, Lcom/deepalhome/launcher/databinding/FirstLaunchViewBinding;

    const-string v0, "inflate(...)"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/deepalhome/launcher/splash/FirstLaunchView;->binding:Lcom/deepalhome/launcher/databinding/FirstLaunchViewBinding;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v3, Lcom/deepalhome/launcher/databinding/DialogViewBinding;->$r8$clinit:I

    const v3, 0x7f0e0052

    const/4 v4, 0x0

    invoke-static {p2, v3, v2, v4, v2}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p2

    check-cast p2, Lcom/deepalhome/launcher/databinding/DialogViewBinding;

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/deepalhome/launcher/splash/FirstLaunchView;->dialogBinding:Lcom/deepalhome/launcher/databinding/DialogViewBinding;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/deepalhome/launcher/databinding/InitCarDialogBinding;->$r8$clinit:I

    const p2, 0x7f0e006d

    invoke-static {p1, p2, v2, v4, v2}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/deepalhome/launcher/databinding/InitCarDialogBinding;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/deepalhome/launcher/splash/FirstLaunchView;->initCarBinding:Lcom/deepalhome/launcher/databinding/InitCarDialogBinding;

    new-instance p1, Lcom/deepalhome/launcher/splash/FirstLaunchView$uiModeListener$1;

    invoke-direct {p1, p0}, Lcom/deepalhome/launcher/splash/FirstLaunchView$uiModeListener$1;-><init>(Lcom/deepalhome/launcher/splash/FirstLaunchView;)V

    iput-object p1, p0, Lcom/deepalhome/launcher/splash/FirstLaunchView;->uiModeListener:Lkotlin/jvm/functions/Function1;

    invoke-virtual {p0, v1}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setFocusable(Z)V

    invoke-direct {p0}, Lcom/deepalhome/launcher/splash/FirstLaunchView;->setupContent()V

    invoke-direct {p0}, Lcom/deepalhome/launcher/splash/FirstLaunchView;->setupInitCar()V

    sget-object p1, Lcom/deepalhome/launcher/theme/UIModeManager;->INSTANCE:Lcom/deepalhome/launcher/theme/UIModeManager;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/theme/UIModeManager;->isSystemNight()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/deepalhome/launcher/splash/FirstLaunchView;->applyUIMode(Z)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/deepalhome/launcher/splash/FirstLaunchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static final synthetic access$applyUIMode(Lcom/deepalhome/launcher/splash/FirstLaunchView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/deepalhome/launcher/splash/FirstLaunchView;->applyUIMode(Z)V

    return-void
.end method

.method public static final synthetic access$resolveActivity(Lcom/deepalhome/launcher/splash/FirstLaunchView;)Landroid/app/Activity;
    .locals 0

    invoke-direct {p0}, Lcom/deepalhome/launcher/splash/FirstLaunchView;->resolveActivity()Landroid/app/Activity;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$startFilePermissionSettings(Lcom/deepalhome/launcher/splash/FirstLaunchView;)V
    .locals 0

    invoke-direct {p0}, Lcom/deepalhome/launcher/splash/FirstLaunchView;->startFilePermissionSettings()V

    return-void
.end method

.method public static final synthetic access$startNotificationPermissionManager(Lcom/deepalhome/launcher/splash/FirstLaunchView;)V
    .locals 0

    invoke-direct {p0}, Lcom/deepalhome/launcher/splash/FirstLaunchView;->startNotificationPermissionManager()V

    return-void
.end method

.method private final applyUIMode(Z)V
    .locals 4

    const v0, 0x7f0800ab

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/deepalhome/launcher/splash/FirstLaunchView;->dialogBinding:Lcom/deepalhome/launcher/databinding/DialogViewBinding;

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/DialogViewBinding;->titleTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f06038c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/deepalhome/launcher/splash/FirstLaunchView;->dialogBinding:Lcom/deepalhome/launcher/databinding/DialogViewBinding;

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/DialogViewBinding;->messageTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/deepalhome/launcher/splash/FirstLaunchView;->dialogBinding:Lcom/deepalhome/launcher/databinding/DialogViewBinding;

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/DialogViewBinding;->cancelBtn:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f060388

    invoke-virtual {v1, v3}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/deepalhome/launcher/splash/FirstLaunchView;->dialogBinding:Lcom/deepalhome/launcher/databinding/DialogViewBinding;

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/DialogViewBinding;->cancelBtn:Landroid/widget/TextView;

    const v1, 0x7f0800aa

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object p1, p0, Lcom/deepalhome/launcher/splash/FirstLaunchView;->dialogBinding:Lcom/deepalhome/launcher/databinding/DialogViewBinding;

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/DialogViewBinding;->okBtn:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object p1, p0, Lcom/deepalhome/launcher/splash/FirstLaunchView;->dialogBinding:Lcom/deepalhome/launcher/databinding/DialogViewBinding;

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/DialogViewBinding;->rootView:Landroidx/cardview/widget/CardView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f060026

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/cardview/widget/CardView;->setCardBackgroundColor(I)V

    iget-object p1, p0, Lcom/deepalhome/launcher/splash/FirstLaunchView;->initCarBinding:Lcom/deepalhome/launcher/databinding/InitCarDialogBinding;

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/InitCarDialogBinding;->titleTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/deepalhome/launcher/splash/FirstLaunchView;->initCarBinding:Lcom/deepalhome/launcher/databinding/InitCarDialogBinding;

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/InitCarDialogBinding;->cardView:Landroidx/cardview/widget/CardView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/cardview/widget/CardView;->setCardBackgroundColor(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/deepalhome/launcher/splash/FirstLaunchView;->dialogBinding:Lcom/deepalhome/launcher/databinding/DialogViewBinding;

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/DialogViewBinding;->titleTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f06038b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/deepalhome/launcher/splash/FirstLaunchView;->dialogBinding:Lcom/deepalhome/launcher/databinding/DialogViewBinding;

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/DialogViewBinding;->messageTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/deepalhome/launcher/splash/FirstLaunchView;->dialogBinding:Lcom/deepalhome/launcher/databinding/DialogViewBinding;

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/DialogViewBinding;->cancelBtn:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/deepalhome/launcher/splash/FirstLaunchView;->dialogBinding:Lcom/deepalhome/launcher/databinding/DialogViewBinding;

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/DialogViewBinding;->cancelBtn:Landroid/widget/TextView;

    const v1, 0x7f0800a9

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object p1, p0, Lcom/deepalhome/launcher/splash/FirstLaunchView;->dialogBinding:Lcom/deepalhome/launcher/databinding/DialogViewBinding;

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/DialogViewBinding;->okBtn:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object p1, p0, Lcom/deepalhome/launcher/splash/FirstLaunchView;->dialogBinding:Lcom/deepalhome/launcher/databinding/DialogViewBinding;

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/DialogViewBinding;->rootView:Landroidx/cardview/widget/CardView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f060023

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/cardview/widget/CardView;->setCardBackgroundColor(I)V

    iget-object p1, p0, Lcom/deepalhome/launcher/splash/FirstLaunchView;->initCarBinding:Lcom/deepalhome/launcher/databinding/InitCarDialogBinding;

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/InitCarDialogBinding;->titleTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/deepalhome/launcher/splash/FirstLaunchView;->initCarBinding:Lcom/deepalhome/launcher/databinding/InitCarDialogBinding;

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/InitCarDialogBinding;->cardView:Landroidx/cardview/widget/CardView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/cardview/widget/CardView;->setCardBackgroundColor(I)V

    :goto_0
    return-void
.end method

.method private final hasDangerousPermission()Z
    .locals 2

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "enabled_notification_listeners"

    invoke-static {p0, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const-string v1, "com.android.systemui/com.android.car.notification.CarNotificationListener"

    invoke-static {p0, v1, v0}, Lkotlin/text/StringsKt__StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    move v0, v1

    :cond_0
    return v0
.end method

.method private final initCar(I)V
    .locals 2

    sget-object v0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    new-instance v1, Lcom/deepalhome/launcher/splash/FirstLaunchView$initCar$1;

    invoke-direct {v1, p1}, Lcom/deepalhome/launcher/splash/FirstLaunchView$initCar$1;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/deepalhome/launcher/config/ConfigManager;->updateCarInfo(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/splash/FirstLaunchView;->refresh()V

    return-void
.end method

.method private final isAgreeToUse()Z
    .locals 1

    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/UserConfig;->getSignedAgreementVersion()I

    move-result v0

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->getAppConfig()Lcom/deepalhome/launcher/config/appconfig/AppConfig;

    move-result-object p0

    iget-object p0, p0, Lcom/deepalhome/launcher/config/appconfig/AppConfig;->agreementConfig:Lcom/deepalhome/launcher/config/appconfig/AgreementConfig;

    iget p0, p0, Lcom/deepalhome/launcher/config/appconfig/AgreementConfig;->agreementVersion:I

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private final resolveActivity()Landroid/app/Activity;
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    instance-of v0, p0, Landroid/app/Activity;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p0, Landroid/app/Activity;

    goto :goto_0

    :cond_0
    move-object p0, v1

    :goto_0
    if-nez p0, :cond_1

    invoke-static {}, Lcom/blankj/utilcode/util/ActivityUtils;->getTopActivity()Landroid/app/Activity;

    move-result-object p0

    :cond_1
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_2

    move-object v1, p0

    :cond_2
    return-object v1
.end method

.method private final resolveStep()Lcom/deepalhome/launcher/splash/FirstLaunchView$Step;
    .locals 3

    invoke-direct {p0}, Lcom/deepalhome/launcher/splash/FirstLaunchView;->isAgreeToUse()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Lcom/deepalhome/launcher/splash/FirstLaunchView$Step;->Agreement:Lcom/deepalhome/launcher/splash/FirstLaunchView$Step;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/deepalhome/launcher/util/CarUtil;->Companion:Lcom/deepalhome/launcher/util/CarUtil$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/util/CarUtil$Companion;->isS05()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/deepalhome/launcher/util/LogcatUtil;->INSTANCE:Lcom/deepalhome/launcher/util/LogcatUtil;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/util/LogcatUtil;->hasPermission()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p0, Lcom/deepalhome/launcher/splash/FirstLaunchView$Step;->LogPermission:Lcom/deepalhome/launcher/splash/FirstLaunchView$Step;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/deepalhome/launcher/util/FloatWindowPermissionUtils;->INSTANCE:Lcom/deepalhome/launcher/util/FloatWindowPermissionUtils;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v1

    const-string v2, "getApp(...)"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object p0, Lcom/deepalhome/launcher/splash/FirstLaunchView$Step;->FloatWindowPermission:Lcom/deepalhome/launcher/splash/FirstLaunchView$Step;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/deepalhome/launcher/music/MusicManager;->INSTANCE:Lcom/deepalhome/launcher/music/MusicManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/music/MusicManager;->hasPermission()Z

    move-result v0

    if-nez v0, :cond_3

    sget-object p0, Lcom/deepalhome/launcher/splash/FirstLaunchView$Step;->NotificationPermission:Lcom/deepalhome/launcher/splash/FirstLaunchView$Step;

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/deepalhome/launcher/util/CarUtil$Companion;->isS05()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/deepalhome/launcher/splash/FirstLaunchView;->hasDangerousPermission()Z

    move-result p0

    if-eqz p0, :cond_4

    sget-object p0, Lcom/deepalhome/launcher/splash/FirstLaunchView$Step;->DangerousPermission:Lcom/deepalhome/launcher/splash/FirstLaunchView$Step;

    goto :goto_0

    :cond_4
    invoke-static {}, Landroid/os/Environment;->isExternalStorageManager()Z

    move-result p0

    if-nez p0, :cond_5

    sget-object p0, Lcom/deepalhome/launcher/splash/FirstLaunchView$Step;->FilePermission:Lcom/deepalhome/launcher/splash/FirstLaunchView$Step;

    goto :goto_0

    :cond_5
    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->isCarInit()Z

    move-result p0

    if-nez p0, :cond_6

    sget-object p0, Lcom/deepalhome/launcher/splash/FirstLaunchView$Step;->InitCar:Lcom/deepalhome/launcher/splash/FirstLaunchView$Step;

    goto :goto_0

    :cond_6
    sget-object p0, Lcom/deepalhome/launcher/splash/FirstLaunchView$Step;->None:Lcom/deepalhome/launcher/splash/FirstLaunchView$Step;

    :goto_0
    return-object p0
.end method

.method private final setupContent()V
    .locals 5

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0x11

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput v3, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v1, p0, Lcom/deepalhome/launcher/splash/FirstLaunchView;->binding:Lcom/deepalhome/launcher/databinding/FirstLaunchViewBinding;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/FirstLaunchViewBinding;->contentContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/deepalhome/launcher/splash/FirstLaunchView;->dialogBinding:Lcom/deepalhome/launcher/databinding/DialogViewBinding;

    iget-object v2, v2, Landroidx/databinding/ViewDataBinding;->mRoot:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/deepalhome/launcher/splash/FirstLaunchView;->binding:Lcom/deepalhome/launcher/databinding/FirstLaunchViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/FirstLaunchViewBinding;->contentContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/deepalhome/launcher/splash/FirstLaunchView;->initCarBinding:Lcom/deepalhome/launcher/databinding/InitCarDialogBinding;

    iget-object v1, v1, Landroidx/databinding/ViewDataBinding;->mRoot:Landroid/view/View;

    invoke-virtual {v0, v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/deepalhome/launcher/splash/FirstLaunchView;->dialogBinding:Lcom/deepalhome/launcher/databinding/DialogViewBinding;

    iget-object v0, v0, Landroidx/databinding/ViewDataBinding;->mRoot:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/deepalhome/launcher/splash/FirstLaunchView;->initCarBinding:Lcom/deepalhome/launcher/databinding/InitCarDialogBinding;

    iget-object p0, p0, Landroidx/databinding/ViewDataBinding;->mRoot:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private final setupInitCar()V
    .locals 3

    iget-object v0, p0, Lcom/deepalhome/launcher/splash/FirstLaunchView;->initCarBinding:Lcom/deepalhome/launcher/databinding/InitCarDialogBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/InitCarDialogBinding;->socBtn:Landroid/widget/TextView;

    new-instance v1, Lcom/deepalhome/launcher/splash/FirstLaunchView$$ExternalSyntheticLambda2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/deepalhome/launcher/splash/FirstLaunchView$$ExternalSyntheticLambda2;-><init>(Lcom/deepalhome/launcher/splash/FirstLaunchView;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/deepalhome/launcher/splash/FirstLaunchView;->initCarBinding:Lcom/deepalhome/launcher/databinding/InitCarDialogBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/InitCarDialogBinding;->hybridBtn:Landroid/widget/TextView;

    new-instance v1, Lcom/deepalhome/launcher/splash/FirstLaunchView$$ExternalSyntheticLambda2;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/deepalhome/launcher/splash/FirstLaunchView$$ExternalSyntheticLambda2;-><init>(Lcom/deepalhome/launcher/splash/FirstLaunchView;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private static final setupInitCar$lambda$5(Lcom/deepalhome/launcher/splash/FirstLaunchView;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/deepalhome/launcher/splash/FirstLaunchView;->initCar(I)V

    return-void
.end method

.method private static final setupInitCar$lambda$6(Lcom/deepalhome/launcher/splash/FirstLaunchView;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lcom/deepalhome/launcher/splash/FirstLaunchView;->initCar(I)V

    return-void
.end method

.method private final showDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function0;",
            "Lkotlin/jvm/functions/Function0;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/deepalhome/launcher/splash/FirstLaunchView;->dialogBinding:Lcom/deepalhome/launcher/databinding/DialogViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/DialogViewBinding;->titleTv:Landroid/widget/TextView;

    const-string v1, ""

    if-nez p1, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/deepalhome/launcher/splash/FirstLaunchView;->dialogBinding:Lcom/deepalhome/launcher/databinding/DialogViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/DialogViewBinding;->titleTv:Landroid/widget/TextView;

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz p1, :cond_2

    invoke-static {p1}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move p1, v3

    goto :goto_2

    :cond_2
    :goto_1
    move p1, v2

    :goto_2
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/deepalhome/launcher/splash/FirstLaunchView;->dialogBinding:Lcom/deepalhome/launcher/databinding/DialogViewBinding;

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/DialogViewBinding;->messageTv:Landroid/widget/TextView;

    if-nez p2, :cond_3

    goto :goto_3

    :cond_3
    move-object v1, p2

    :goto_3
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/deepalhome/launcher/splash/FirstLaunchView;->dialogBinding:Lcom/deepalhome/launcher/databinding/DialogViewBinding;

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/DialogViewBinding;->messageTv:Landroid/widget/TextView;

    if-eqz p2, :cond_5

    invoke-static {p2}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_4

    goto :goto_4

    :cond_4
    move p2, v3

    goto :goto_5

    :cond_5
    :goto_4
    move p2, v2

    :goto_5
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/deepalhome/launcher/splash/FirstLaunchView;->dialogBinding:Lcom/deepalhome/launcher/databinding/DialogViewBinding;

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/DialogViewBinding;->viewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/deepalhome/launcher/splash/FirstLaunchView;->dialogBinding:Lcom/deepalhome/launcher/databinding/DialogViewBinding;

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/DialogViewBinding;->viewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object p1, p0, Lcom/deepalhome/launcher/splash/FirstLaunchView;->dialogBinding:Lcom/deepalhome/launcher/databinding/DialogViewBinding;

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/DialogViewBinding;->okBtn:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/deepalhome/launcher/splash/FirstLaunchView;->dialogBinding:Lcom/deepalhome/launcher/databinding/DialogViewBinding;

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/DialogViewBinding;->okBtn:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/deepalhome/launcher/splash/FirstLaunchView;->dialogBinding:Lcom/deepalhome/launcher/databinding/DialogViewBinding;

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/DialogViewBinding;->okBtn:Landroid/widget/TextView;

    new-instance p2, Lcom/deepalhome/launcher/window/WindowsView$$ExternalSyntheticLambda8;

    const/4 p3, 0x1

    invoke-direct {p2, p5, p3}, Lcom/deepalhome/launcher/window/WindowsView$$ExternalSyntheticLambda8;-><init>(Lkotlin/jvm/functions/Function0;I)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/deepalhome/launcher/splash/FirstLaunchView;->dialogBinding:Lcom/deepalhome/launcher/databinding/DialogViewBinding;

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/DialogViewBinding;->cancelBtn:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/deepalhome/launcher/splash/FirstLaunchView;->dialogBinding:Lcom/deepalhome/launcher/databinding/DialogViewBinding;

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/DialogViewBinding;->cancelBtn:Landroid/widget/TextView;

    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/deepalhome/launcher/splash/FirstLaunchView;->dialogBinding:Lcom/deepalhome/launcher/databinding/DialogViewBinding;

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/DialogViewBinding;->cancelBtn:Landroid/widget/TextView;

    new-instance p2, Lcom/deepalhome/launcher/window/WindowsView$$ExternalSyntheticLambda8;

    const/4 p3, 0x2

    invoke-direct {p2, p6, p3}, Lcom/deepalhome/launcher/window/WindowsView$$ExternalSyntheticLambda8;-><init>(Lkotlin/jvm/functions/Function0;I)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object p1, Lcom/deepalhome/launcher/theme/UIModeManager;->INSTANCE:Lcom/deepalhome/launcher/theme/UIModeManager;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/theme/UIModeManager;->isSystemNight()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/deepalhome/launcher/splash/FirstLaunchView;->applyUIMode(Z)V

    return-void
.end method

.method private static final showDialog$lambda$3(Lkotlin/jvm/functions/Function0;Landroid/view/View;)V
    .locals 0

    const-string p1, "$onPositive"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method

.method private static final showDialog$lambda$4(Lkotlin/jvm/functions/Function0;Landroid/view/View;)V
    .locals 0

    const-string p1, "$onNegative"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method

.method private final showDialogForStep(Lcom/deepalhome/launcher/splash/FirstLaunchView$Step;)V
    .locals 11

    iget-object v0, p0, Lcom/deepalhome/launcher/splash/FirstLaunchView;->initCarBinding:Lcom/deepalhome/launcher/databinding/InitCarDialogBinding;

    iget-object v0, v0, Landroidx/databinding/ViewDataBinding;->mRoot:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/deepalhome/launcher/splash/FirstLaunchView;->dialogBinding:Lcom/deepalhome/launcher/databinding/DialogViewBinding;

    iget-object v0, v0, Landroidx/databinding/ViewDataBinding;->mRoot:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    sget-object v7, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v7}, Lcom/deepalhome/launcher/config/ConfigManager;->getAppConfig()Lcom/deepalhome/launcher/config/appconfig/AppConfig;

    move-result-object v8

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const v1, 0x7f1301d6

    const-string v2, "getString(...)"

    if-eqz v0, :cond_5

    const/4 v3, 0x1

    const v4, 0x7f1301d7

    if-eq v0, v3, :cond_4

    const/4 v3, 0x2

    const v5, 0x7f1301d9

    if-eq v0, v3, :cond_3

    const/4 v3, 0x3

    if-eq v0, v3, :cond_2

    const/4 v3, 0x4

    if-eq v0, v3, :cond_1

    const/4 v3, 0x5

    if-eq v0, v3, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v3, v8, Lcom/deepalhome/launcher/config/appconfig/AppConfig;->filePermissionTitle:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v4, 0x7f1301d8

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v6, Lcom/deepalhome/launcher/splash/FirstLaunchView$showDialogForStep$11;

    invoke-direct {v6, p0}, Lcom/deepalhome/launcher/splash/FirstLaunchView$showDialogForStep$11;-><init>(Lcom/deepalhome/launcher/splash/FirstLaunchView;)V

    sget-object v7, Lcom/deepalhome/launcher/splash/FirstLaunchView$showDialogForStep$12;->INSTANCE:Lcom/deepalhome/launcher/splash/FirstLaunchView$showDialogForStep$12;

    iget-object v2, v8, Lcom/deepalhome/launcher/config/appconfig/AppConfig;->filePermissionMessage:Ljava/lang/String;

    move-object v0, p0

    move-object v1, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    invoke-direct/range {v0 .. v6}, Lcom/deepalhome/launcher/splash/FirstLaunchView;->showDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    goto/16 :goto_0

    :cond_1
    iget-object v3, v8, Lcom/deepalhome/launcher/config/appconfig/AppConfig;->dangerousPermissionTitle:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v6, Lcom/deepalhome/launcher/splash/FirstLaunchView$showDialogForStep$9;

    invoke-direct {v6, p0}, Lcom/deepalhome/launcher/splash/FirstLaunchView$showDialogForStep$9;-><init>(Lcom/deepalhome/launcher/splash/FirstLaunchView;)V

    sget-object v7, Lcom/deepalhome/launcher/splash/FirstLaunchView$showDialogForStep$10;->INSTANCE:Lcom/deepalhome/launcher/splash/FirstLaunchView$showDialogForStep$10;

    iget-object v2, v8, Lcom/deepalhome/launcher/config/appconfig/AppConfig;->dangerousPermissionMessage:Ljava/lang/String;

    move-object v0, p0

    move-object v1, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    invoke-direct/range {v0 .. v6}, Lcom/deepalhome/launcher/splash/FirstLaunchView;->showDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    goto/16 :goto_0

    :cond_2
    iget-object v3, v8, Lcom/deepalhome/launcher/config/appconfig/AppConfig;->requestMusicPermissionTitle:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v6, Lcom/deepalhome/launcher/splash/FirstLaunchView$showDialogForStep$7;

    invoke-direct {v6, p0}, Lcom/deepalhome/launcher/splash/FirstLaunchView$showDialogForStep$7;-><init>(Lcom/deepalhome/launcher/splash/FirstLaunchView;)V

    sget-object v7, Lcom/deepalhome/launcher/splash/FirstLaunchView$showDialogForStep$8;->INSTANCE:Lcom/deepalhome/launcher/splash/FirstLaunchView$showDialogForStep$8;

    iget-object v2, v8, Lcom/deepalhome/launcher/config/appconfig/AppConfig;->requestMusicPermissionMessage:Ljava/lang/String;

    move-object v0, p0

    move-object v1, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    invoke-direct/range {v0 .. v6}, Lcom/deepalhome/launcher/splash/FirstLaunchView;->showDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    goto/16 :goto_0

    :cond_3
    iget-object v3, v8, Lcom/deepalhome/launcher/config/appconfig/AppConfig;->floatWindowPermissionTitle:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v6, Lcom/deepalhome/launcher/splash/FirstLaunchView$showDialogForStep$5;

    invoke-direct {v6, p0}, Lcom/deepalhome/launcher/splash/FirstLaunchView$showDialogForStep$5;-><init>(Lcom/deepalhome/launcher/splash/FirstLaunchView;)V

    sget-object v7, Lcom/deepalhome/launcher/splash/FirstLaunchView$showDialogForStep$6;->INSTANCE:Lcom/deepalhome/launcher/splash/FirstLaunchView$showDialogForStep$6;

    iget-object v2, v8, Lcom/deepalhome/launcher/config/appconfig/AppConfig;->floatWindowPermissionMessage:Ljava/lang/String;

    move-object v0, p0

    move-object v1, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    invoke-direct/range {v0 .. v6}, Lcom/deepalhome/launcher/splash/FirstLaunchView;->showDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    goto/16 :goto_0

    :cond_4
    iget-object v3, v8, Lcom/deepalhome/launcher/config/appconfig/AppConfig;->floatLogPermissionTitle:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v6, Lcom/deepalhome/launcher/splash/FirstLaunchView$showDialogForStep$3;->INSTANCE:Lcom/deepalhome/launcher/splash/FirstLaunchView$showDialogForStep$3;

    sget-object v7, Lcom/deepalhome/launcher/splash/FirstLaunchView$showDialogForStep$4;->INSTANCE:Lcom/deepalhome/launcher/splash/FirstLaunchView$showDialogForStep$4;

    iget-object v2, v8, Lcom/deepalhome/launcher/config/appconfig/AppConfig;->floatLogPermissionMessage:Ljava/lang/String;

    move-object v0, p0

    move-object v1, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    invoke-direct/range {v0 .. v6}, Lcom/deepalhome/launcher/splash/FirstLaunchView;->showDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    goto :goto_0

    :cond_5
    iget-object v0, v8, Lcom/deepalhome/launcher/config/appconfig/AppConfig;->agreementConfig:Lcom/deepalhome/launcher/config/appconfig/AgreementConfig;

    iget-object v3, v0, Lcom/deepalhome/launcher/config/appconfig/AgreementConfig;->agreementTitle:Ljava/lang/String;

    iget-object v4, v0, Lcom/deepalhome/launcher/config/appconfig/AgreementConfig;->agreementMessage:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v5, 0x7f1301d5

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v9, Lcom/deepalhome/launcher/splash/FirstLaunchView$showDialogForStep$1;

    invoke-direct {v9, v8, p0}, Lcom/deepalhome/launcher/splash/FirstLaunchView$showDialogForStep$1;-><init>(Lcom/deepalhome/launcher/config/appconfig/AppConfig;Lcom/deepalhome/launcher/splash/FirstLaunchView;)V

    sget-object v10, Lcom/deepalhome/launcher/splash/FirstLaunchView$showDialogForStep$2;->INSTANCE:Lcom/deepalhome/launcher/splash/FirstLaunchView$showDialogForStep$2;

    move-object v0, p0

    move-object v1, v3

    move-object v2, v4

    move-object v3, v5

    move-object v4, v6

    move-object v5, v9

    move-object v6, v10

    invoke-direct/range {v0 .. v6}, Lcom/deepalhome/launcher/splash/FirstLaunchView;->showDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v7}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v0

    iget-object v1, v8, Lcom/deepalhome/launcher/config/appconfig/AppConfig;->agreementConfig:Lcom/deepalhome/launcher/config/appconfig/AgreementConfig;

    iget v1, v1, Lcom/deepalhome/launcher/config/appconfig/AgreementConfig;->agreementVersion:I

    invoke-virtual {v0, v1}, Lcom/deepalhome/launcher/config/UserConfig;->setSignedAgreementVersion(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/splash/FirstLaunchView;->refresh()V

    :goto_0
    return-void
.end method

.method private final showInitCar()V
    .locals 2

    iget-object v0, p0, Lcom/deepalhome/launcher/splash/FirstLaunchView;->dialogBinding:Lcom/deepalhome/launcher/databinding/DialogViewBinding;

    iget-object v0, v0, Landroidx/databinding/ViewDataBinding;->mRoot:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/deepalhome/launcher/splash/FirstLaunchView;->initCarBinding:Lcom/deepalhome/launcher/databinding/InitCarDialogBinding;

    iget-object v0, v0, Landroidx/databinding/ViewDataBinding;->mRoot:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    sget-object v0, Lcom/deepalhome/launcher/theme/UIModeManager;->INSTANCE:Lcom/deepalhome/launcher/theme/UIModeManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/theme/UIModeManager;->isSystemNight()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/deepalhome/launcher/splash/FirstLaunchView;->applyUIMode(Z)V

    return-void
.end method

.method private final showStep(Lcom/deepalhome/launcher/splash/FirstLaunchView$Step;)V
    .locals 3

    iget-object v0, p0, Lcom/deepalhome/launcher/splash/FirstLaunchView;->currentStep:Lcom/deepalhome/launcher/splash/FirstLaunchView$Step;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/deepalhome/launcher/splash/FirstLaunchView;->currentStep:Lcom/deepalhome/launcher/splash/FirstLaunchView$Step;

    sget-object v0, Lcom/deepalhome/launcher/splash/FirstLaunchView$Step;->None:Lcom/deepalhome/launcher/splash/FirstLaunchView$Step;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/deepalhome/launcher/splash/FirstLaunchView;->dialogBinding:Lcom/deepalhome/launcher/databinding/DialogViewBinding;

    iget-object p1, p1, Landroidx/databinding/ViewDataBinding;->mRoot:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/deepalhome/launcher/splash/FirstLaunchView;->initCarBinding:Lcom/deepalhome/launcher/databinding/InitCarDialogBinding;

    iget-object p1, p1, Landroidx/databinding/ViewDataBinding;->mRoot:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    iget-boolean p1, p0, Lcom/deepalhome/launcher/splash/FirstLaunchView;->completedNotified:Z

    if-nez p1, :cond_1

    iput-boolean v1, p0, Lcom/deepalhome/launcher/splash/FirstLaunchView;->completedNotified:Z

    iget-object p0, p0, Lcom/deepalhome/launcher/splash/FirstLaunchView;->onCompleted:Lkotlin/jvm/functions/Function0;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/deepalhome/launcher/splash/FirstLaunchView;->completedNotified:Z

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/deepalhome/launcher/splash/FirstLaunchView;->updateContentLayout()V

    sget-object v0, Lcom/deepalhome/launcher/splash/FirstLaunchView$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v0, v0, v2

    if-ne v0, v1, :cond_3

    invoke-direct {p0}, Lcom/deepalhome/launcher/splash/FirstLaunchView;->showInitCar()V

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1}, Lcom/deepalhome/launcher/splash/FirstLaunchView;->showDialogForStep(Lcom/deepalhome/launcher/splash/FirstLaunchView$Step;)V

    :goto_0
    return-void
.end method

.method private final startFilePermissionSettings()V
    .locals 2

    new-instance p0, Landroid/content/Intent;

    const-string v0, "android.settings.MANAGE_APP_ALL_FILES_ACCESS_PERMISSION"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "package:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-static {p0}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private final startNotificationPermissionManager()V
    .locals 1

    new-instance p0, Landroid/content/Intent;

    const-string v0, "android.settings.ACTION_NOTIFICATION_LISTENER_SETTINGS"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private final updateContentLayout()V
    .locals 5

    invoke-static {}, Lcom/blankj/utilcode/util/ScreenUtils;->getScreenWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/deepalhome/launcher/splash/FirstLaunchView;->binding:Lcom/deepalhome/launcher/databinding/FirstLaunchViewBinding;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/FirstLaunchViewBinding;->contentContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v2, v1, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v2, :cond_0

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v2, -0x2

    const/16 v3, 0x11

    if-nez v1, :cond_1

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v0, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    :cond_1
    iget v4, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    if-ne v4, v0, :cond_2

    iget v4, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    if-eq v4, v3, :cond_3

    :cond_2
    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v0, p0, Lcom/deepalhome/launcher/splash/FirstLaunchView;->binding:Lcom/deepalhome/launcher/databinding/FirstLaunchViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/FirstLaunchViewBinding;->contentContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    iget-object p0, p0, Lcom/deepalhome/launcher/splash/FirstLaunchView;->dialogBinding:Lcom/deepalhome/launcher/databinding/DialogViewBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/DialogViewBinding;->messageTv:Landroid/widget/TextView;

    invoke-static {}, Lcom/blankj/utilcode/util/ScreenUtils;->getScreenHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setMaxHeight(I)V

    return-void
.end method


# virtual methods
.method public final getOnCompleted()Lkotlin/jvm/functions/Function0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0;"
        }
    .end annotation

    iget-object p0, p0, Lcom/deepalhome/launcher/splash/FirstLaunchView;->onCompleted:Lkotlin/jvm/functions/Function0;

    return-object p0
.end method

.method public onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    invoke-direct {p0}, Lcom/deepalhome/launcher/splash/FirstLaunchView;->updateContentLayout()V

    iget-boolean v0, p0, Lcom/deepalhome/launcher/splash/FirstLaunchView;->uiModeListenerRegistered:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/deepalhome/launcher/splash/FirstLaunchView;->uiModeListenerRegistered:Z

    sget-object v0, Lcom/deepalhome/launcher/theme/UIModeManager;->INSTANCE:Lcom/deepalhome/launcher/theme/UIModeManager;

    iget-object v1, p0, Lcom/deepalhome/launcher/splash/FirstLaunchView;->uiModeListener:Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/deepalhome/launcher/theme/UIModeManager;->addOnUIModeChangedListener(Lkotlin/jvm/functions/Function1;)V

    :cond_0
    sget-object v0, Lcom/deepalhome/launcher/theme/UIModeManager;->INSTANCE:Lcom/deepalhome/launcher/theme/UIModeManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/theme/UIModeManager;->isSystemNight()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/deepalhome/launcher/splash/FirstLaunchView;->applyUIMode(Z)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    iget-boolean v0, p0, Lcom/deepalhome/launcher/splash/FirstLaunchView;->uiModeListenerRegistered:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/deepalhome/launcher/theme/UIModeManager;->INSTANCE:Lcom/deepalhome/launcher/theme/UIModeManager;

    iget-object v1, p0, Lcom/deepalhome/launcher/splash/FirstLaunchView;->uiModeListener:Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/deepalhome/launcher/theme/UIModeManager;->removeOnUIModeChangedListener(Lkotlin/jvm/functions/Function1;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/deepalhome/launcher/splash/FirstLaunchView;->uiModeListenerRegistered:Z

    :cond_0
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    invoke-direct {p0}, Lcom/deepalhome/launcher/splash/FirstLaunchView;->updateContentLayout()V

    return-void
.end method

.method public final refresh()V
    .locals 1

    invoke-direct {p0}, Lcom/deepalhome/launcher/splash/FirstLaunchView;->resolveStep()Lcom/deepalhome/launcher/splash/FirstLaunchView$Step;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/deepalhome/launcher/splash/FirstLaunchView;->showStep(Lcom/deepalhome/launcher/splash/FirstLaunchView$Step;)V

    return-void
.end method

.method public final setOnCompleted(Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/deepalhome/launcher/splash/FirstLaunchView;->onCompleted:Lkotlin/jvm/functions/Function0;

    return-void
.end method
