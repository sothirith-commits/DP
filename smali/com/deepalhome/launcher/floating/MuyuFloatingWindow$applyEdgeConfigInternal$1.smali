.class public final Lcom/deepalhome/launcher/floating/MuyuFloatingWindow$applyEdgeConfigInternal$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field final synthetic $enabled:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/deepalhome/launcher/floating/MuyuFloatingWindow$applyEdgeConfigInternal$1;->$enabled:Z

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Lcom/petterp/floatingx/imp/FxBasicConfigProvider;

    const-string v0, "$this$updateConfig"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/deepalhome/launcher/floating/MuyuFloatingWindow$applyEdgeConfigInternal$1;->$enabled:Z

    iget-object v1, p1, Lcom/petterp/floatingx/imp/FxBasicConfigProvider;->helper:Lcom/petterp/floatingx/assist/helper/FxBasisHelper;

    iput-boolean v0, v1, Lcom/petterp/floatingx/assist/helper/FxBasisHelper;->enableEdgeAdsorption:Z

    const/4 v0, 0x0

    iget-object p1, p1, Lcom/petterp/floatingx/imp/FxBasicConfigProvider;->p:Lcom/petterp/floatingx/listener/provider/IFxPlatformProvider;

    if-nez p1, :cond_0

    move-object v2, v0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lcom/petterp/floatingx/listener/provider/IFxPlatformProvider;->getInternalView()Lcom/petterp/floatingx/view/IFxInternalHelper;

    move-result-object v2

    :goto_0
    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v2}, Lcom/petterp/floatingx/view/IFxInternalHelper;->moveToEdge()V

    :goto_1
    iget-boolean p0, p0, Lcom/deepalhome/launcher/floating/MuyuFloatingWindow$applyEdgeConfigInternal$1;->$enabled:Z

    if-eqz p0, :cond_6

    sget-object p0, Lcom/petterp/floatingx/assist/FxAdsorbDirection;->LEFT_OR_RIGHT:Lcom/petterp/floatingx/assist/FxAdsorbDirection;

    const-string v2, "direction"

    invoke-static {v2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object p0, v1, Lcom/petterp/floatingx/assist/helper/FxBasisHelper;->adsorbDirection:Lcom/petterp/floatingx/assist/FxAdsorbDirection;

    if-nez p1, :cond_2

    move-object p0, v0

    goto :goto_2

    :cond_2
    invoke-interface {p1}, Lcom/petterp/floatingx/listener/provider/IFxPlatformProvider;->getInternalView()Lcom/petterp/floatingx/view/IFxInternalHelper;

    move-result-object p0

    :goto_2
    if-nez p0, :cond_3

    goto :goto_3

    :cond_3
    invoke-interface {p0}, Lcom/petterp/floatingx/view/IFxInternalHelper;->moveToEdge()V

    :goto_3
    const/high16 p0, 0x40c00000    # 6.0f

    invoke-static {p0}, Lcom/blankj/utilcode/util/SizeUtils;->dp2px(F)I

    move-result p0

    int-to-float p0, p0

    iput p0, v1, Lcom/petterp/floatingx/assist/helper/FxBasisHelper;->edgeOffset:F

    if-nez p1, :cond_4

    goto :goto_4

    :cond_4
    invoke-interface {p1}, Lcom/petterp/floatingx/listener/provider/IFxPlatformProvider;->getInternalView()Lcom/petterp/floatingx/view/IFxInternalHelper;

    move-result-object v0

    :goto_4
    if-nez v0, :cond_5

    goto :goto_5

    :cond_5
    invoke-interface {v0}, Lcom/petterp/floatingx/view/IFxInternalHelper;->moveToEdge()V

    :cond_6
    :goto_5
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
