.class public final Lcom/deepalhome/launcher/navigation/render/WindDirectionQuickActionRenderer$bind$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic $environment:Lcom/deepalhome/launcher/navigation/render/GridRenderEnvironment;

.field final synthetic $view:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/navigation/render/GridRenderEnvironment;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/navigation/render/WindDirectionQuickActionRenderer$bind$1;->$environment:Lcom/deepalhome/launcher/navigation/render/GridRenderEnvironment;

    iput-object p2, p0, Lcom/deepalhome/launcher/navigation/render/WindDirectionQuickActionRenderer$bind$1;->$view:Landroid/view/View;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/deepalhome/launcher/navigation/render/WindDirectionQuickActionRenderer$bind$1;->$environment:Lcom/deepalhome/launcher/navigation/render/GridRenderEnvironment;

    iget-object v0, v0, Lcom/deepalhome/launcher/navigation/render/GridRenderEnvironment;->overlayParentProvider:Lkotlin/jvm/functions/Function0;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/deepalhome/launcher/navigation/render/WindDirectionQuickActionRenderer$bind$1;->$view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/render/WindDirectionQuickActionRenderer$bind$1;->$view:Landroid/view/View;

    const-string v0, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v0, p0

    check-cast v0, Landroid/view/ViewGroup;

    :cond_2
    return-object v0
.end method
