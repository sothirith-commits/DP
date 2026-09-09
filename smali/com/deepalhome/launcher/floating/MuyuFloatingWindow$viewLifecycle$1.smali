.class public final Lcom/deepalhome/launcher/floating/MuyuFloatingWindow$viewLifecycle$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/petterp/floatingx/listener/IFxViewLifecycle;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final attach(Landroid/view/View;)V
    .locals 0

    const-string p0, "view"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final detached(Landroid/view/View;)V
    .locals 0

    const-string p0, "view"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p0, 0x0

    sput-object p0, Lcom/deepalhome/launcher/floating/MuyuFloatingWindow;->rootView:Landroid/view/View;

    sput-object p0, Lcom/deepalhome/launcher/floating/MuyuFloatingWindow;->iconView:Landroid/widget/ImageView;

    sput-object p0, Lcom/deepalhome/launcher/floating/MuyuFloatingWindow;->meritView:Landroid/widget/TextView;

    sput-object p0, Lcom/deepalhome/launcher/floating/MuyuFloatingWindow;->meritPlusView:Landroid/widget/TextView;

    sget-object p0, Lcom/deepalhome/launcher/floating/MuyuCore;->INSTANCE:Lcom/deepalhome/launcher/floating/MuyuCore;

    sget-object p1, Lcom/deepalhome/launcher/floating/MuyuFloatingWindow;->meritChangedListener:Lcom/deepalhome/launcher/floating/MuyuFloatingWindow$meritChangedListener$1;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "listener"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p0, Lcom/deepalhome/launcher/floating/MuyuCore;->onMeritChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    sget-object p0, Lcom/deepalhome/launcher/theme/UIModeManager;->INSTANCE:Lcom/deepalhome/launcher/theme/UIModeManager;

    sget-object p1, Lcom/deepalhome/launcher/floating/MuyuFloatingWindow;->uiModeChangedListener:Lcom/deepalhome/launcher/floating/MuyuFloatingWindow$uiModeChangedListener$1;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/deepalhome/launcher/theme/UIModeManager;->removeOnUIModeChangedListener(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final initView(Lcom/petterp/floatingx/view/FxViewHolder;)V
    .locals 2

    sget-object p0, Lcom/deepalhome/launcher/floating/MuyuFloatingWindow;->INSTANCE:Lcom/deepalhome/launcher/floating/MuyuFloatingWindow;

    invoke-virtual {p1}, Lcom/petterp/floatingx/view/FxViewHolder;->getView()Landroid/view/View;

    move-result-object p0

    sput-object p0, Lcom/deepalhome/launcher/floating/MuyuFloatingWindow;->rootView:Landroid/view/View;

    const p0, 0x7f0b03d3

    invoke-virtual {p1, p0}, Lcom/petterp/floatingx/view/FxViewHolder;->getView(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    sput-object p0, Lcom/deepalhome/launcher/floating/MuyuFloatingWindow;->iconView:Landroid/widget/ImageView;

    const p0, 0x7f0b03d5

    invoke-virtual {p1, p0}, Lcom/petterp/floatingx/view/FxViewHolder;->getView(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    sput-object p0, Lcom/deepalhome/launcher/floating/MuyuFloatingWindow;->meritView:Landroid/widget/TextView;

    const p0, 0x7f0b03d4

    invoke-virtual {p1, p0}, Lcom/petterp/floatingx/view/FxViewHolder;->getView(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    sput-object p0, Lcom/deepalhome/launcher/floating/MuyuFloatingWindow;->meritPlusView:Landroid/widget/TextView;

    sget-object p0, Lcom/deepalhome/launcher/floating/MuyuCore;->INSTANCE:Lcom/deepalhome/launcher/floating/MuyuCore;

    sget-object p1, Lcom/deepalhome/launcher/floating/MuyuFloatingWindow;->meritChangedListener:Lcom/deepalhome/launcher/floating/MuyuFloatingWindow$meritChangedListener$1;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "listener"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p0, Lcom/deepalhome/launcher/floating/MuyuCore;->onMeritChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    sget-object p0, Lcom/deepalhome/launcher/theme/UIModeManager;->INSTANCE:Lcom/deepalhome/launcher/theme/UIModeManager;

    sget-object p1, Lcom/deepalhome/launcher/floating/MuyuFloatingWindow;->uiModeChangedListener:Lcom/deepalhome/launcher/floating/MuyuFloatingWindow$uiModeChangedListener$1;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/deepalhome/launcher/theme/UIModeManager;->addOnUIModeChangedListener(Lkotlin/jvm/functions/Function1;)V

    sget-object p0, Lcom/deepalhome/launcher/floating/MuyuFloatingWindow;->INSTANCE:Lcom/deepalhome/launcher/floating/MuyuFloatingWindow;

    sget-object p1, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p1}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/deepalhome/launcher/config/UserConfig;->getMuyuMeritCount()J

    move-result-wide v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/deepalhome/launcher/floating/MuyuFloatingWindow;->meritView:Landroid/widget/TextView;

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const v1, 0x7f130383

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    invoke-static {}, Lcom/deepalhome/launcher/floating/MuyuFloatingWindow;->applyViewConfig()V

    invoke-static {}, Lcom/deepalhome/launcher/floating/MuyuFloatingWindow;->applyTheme()V

    return-void
.end method
