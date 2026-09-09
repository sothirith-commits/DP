.class public final Lcom/petterp/floatingx/view/helper/FxViewLocationHelper;
.super Lcom/petterp/floatingx/view/helper/FxViewBasicHelper;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public isInitLocation:Z

.field public final moveBoundary:Lcom/petterp/floatingx/assist/FxBoundaryConfig;

.field public final moveIngBoundary:Lcom/petterp/floatingx/assist/FxBoundaryConfig;

.field public needUpdateConfig:Z

.field public needUpdateLocation:Z

.field public orientation:I

.field public parentH:F

.field public parentW:F

.field public restoreLeftStandard:Z

.field public restoreTopStandard:Z

.field public screenHeightDp:I

.field public screenWidthDp:I

.field public viewH:F

.field public viewW:F


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/petterp/floatingx/view/helper/FxViewBasicHelper;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/petterp/floatingx/view/helper/FxViewLocationHelper;->isInitLocation:Z

    new-instance v1, Lcom/petterp/floatingx/assist/FxBoundaryConfig;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/petterp/floatingx/assist/FxBoundaryConfig;-><init>(I)V

    iput-object v1, p0, Lcom/petterp/floatingx/view/helper/FxViewLocationHelper;->moveBoundary:Lcom/petterp/floatingx/assist/FxBoundaryConfig;

    new-instance v1, Lcom/petterp/floatingx/assist/FxBoundaryConfig;

    invoke-direct {v1, v2}, Lcom/petterp/floatingx/assist/FxBoundaryConfig;-><init>(I)V

    iput-object v1, p0, Lcom/petterp/floatingx/view/helper/FxViewLocationHelper;->moveIngBoundary:Lcom/petterp/floatingx/assist/FxBoundaryConfig;

    iput v0, p0, Lcom/petterp/floatingx/view/helper/FxViewLocationHelper;->orientation:I

    return-void
.end method


# virtual methods
.method public final checkOrRestoreLocation()V
    .locals 9

    iget-boolean v0, p0, Lcom/petterp/floatingx/view/helper/FxViewLocationHelper;->isInitLocation:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/petterp/floatingx/view/helper/FxViewBasicHelper;->getConfig()Lcom/petterp/floatingx/assist/helper/FxBasisHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/petterp/floatingx/assist/helper/FxBasisHelper;->getFxLog$floatingx_release()Lcom/petterp/floatingx/util/FxLog;

    move-result-object v0

    const-string v1, "fxView -> restoreLocation,start"

    invoke-virtual {v0, v1}, Lcom/petterp/floatingx/util/FxLog;->d(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/petterp/floatingx/view/helper/FxViewBasicHelper;->getConfig()Lcom/petterp/floatingx/assist/helper/FxBasisHelper;

    move-result-object v0

    iget-boolean v0, v0, Lcom/petterp/floatingx/assist/helper/FxBasisHelper;->enableEdgeAdsorption:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/petterp/floatingx/view/helper/FxViewLocationHelper;->needUpdateConfig:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/petterp/floatingx/view/helper/FxViewLocationHelper;->restoreLeftStandard:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-boolean v2, p0, Lcom/petterp/floatingx/view/helper/FxViewLocationHelper;->restoreTopStandard:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    new-instance v3, Lkotlin/Pair;

    invoke-direct {v3, v0, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/petterp/floatingx/view/helper/FxViewLocationHelper;->getX()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/petterp/floatingx/view/helper/FxViewLocationHelper;->isNearestLeft(F)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0}, Lcom/petterp/floatingx/view/helper/FxViewLocationHelper;->getY()F

    move-result v2

    invoke-virtual {p0, v2}, Lcom/petterp/floatingx/view/helper/FxViewLocationHelper;->isNearestTop(F)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    new-instance v3, Lkotlin/Pair;

    invoke-direct {v3, v0, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    invoke-virtual {v3}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v3}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p0, v0, v2}, Lcom/petterp/floatingx/view/helper/FxViewLocationHelper;->getAdsorbDirectionLocation(ZZ)Lkotlin/Pair;

    move-result-object v0

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/petterp/floatingx/view/helper/FxViewLocationHelper;->getX()F

    move-result v0

    invoke-virtual {p0, v0, v1}, Lcom/petterp/floatingx/view/helper/FxViewLocationHelper;->safeX(FZ)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p0}, Lcom/petterp/floatingx/view/helper/FxViewLocationHelper;->getY()F

    move-result v2

    invoke-virtual {p0, v2, v1}, Lcom/petterp/floatingx/view/helper/FxViewLocationHelper;->safeY(FZ)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    new-instance v3, Lkotlin/Pair;

    invoke-direct {v3, v0, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v3

    :goto_1
    invoke-virtual {v0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v4

    invoke-virtual {v0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v5

    iput-boolean v1, p0, Lcom/petterp/floatingx/view/helper/FxViewLocationHelper;->restoreLeftStandard:Z

    iput-boolean v1, p0, Lcom/petterp/floatingx/view/helper/FxViewLocationHelper;->restoreTopStandard:Z

    iput-boolean v1, p0, Lcom/petterp/floatingx/view/helper/FxViewLocationHelper;->needUpdateLocation:Z

    iput-boolean v1, p0, Lcom/petterp/floatingx/view/helper/FxViewLocationHelper;->needUpdateConfig:Z

    iget-object v3, p0, Lcom/petterp/floatingx/view/helper/FxViewBasicHelper;->basicView:Lcom/petterp/floatingx/view/FxBasicContainerView;

    if-nez v3, :cond_3

    goto :goto_2

    :cond_3
    const/4 v8, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x4

    invoke-static/range {v3 .. v8}, Lcom/petterp/floatingx/view/FxBasicContainerView;->internalMoveToXY$floatingx_release$default(Lcom/petterp/floatingx/view/FxBasicContainerView;FFZILjava/lang/Object;)V

    :goto_2
    invoke-virtual {p0}, Lcom/petterp/floatingx/view/helper/FxViewBasicHelper;->getConfig()Lcom/petterp/floatingx/assist/helper/FxBasisHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/petterp/floatingx/assist/helper/FxBasisHelper;->getFxLog$floatingx_release()Lcom/petterp/floatingx/util/FxLog;

    move-result-object p0

    const-string v0, "fxView -> restoreLocation,success"

    invoke-virtual {p0, v0}, Lcom/petterp/floatingx/util/FxLog;->d(Ljava/lang/String;)V

    return-void
.end method

.method public final getAdsorbDirectionLocation(ZZ)Lkotlin/Pair;
    .locals 3

    invoke-virtual {p0}, Lcom/petterp/floatingx/view/helper/FxViewBasicHelper;->getConfig()Lcom/petterp/floatingx/assist/helper/FxBasisHelper;

    move-result-object v0

    iget-object v0, v0, Lcom/petterp/floatingx/assist/helper/FxBasisHelper;->adsorbDirection:Lcom/petterp/floatingx/assist/FxAdsorbDirection;

    sget-object v1, Lcom/petterp/floatingx/view/helper/FxViewLocationHelper$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/petterp/floatingx/view/helper/FxViewLocationHelper;->moveBoundary:Lcom/petterp/floatingx/assist/FxBoundaryConfig;

    packed-switch v0, :pswitch_data_0

    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :pswitch_0
    invoke-virtual {p0}, Lcom/petterp/floatingx/view/helper/FxViewLocationHelper;->getX()F

    move-result p1

    invoke-virtual {p0, p1, v1}, Lcom/petterp/floatingx/view/helper/FxViewLocationHelper;->safeX(FZ)F

    move-result p0

    if-eqz p2, :cond_0

    iget p1, v2, Lcom/petterp/floatingx/assist/FxBoundaryConfig;->minH:F

    goto :goto_0

    :cond_0
    iget p1, v2, Lcom/petterp/floatingx/assist/FxBoundaryConfig;->maxH:F

    :goto_0
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    new-instance p2, Lkotlin/Pair;

    invoke-direct {p2, p0, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_2

    :pswitch_1
    invoke-virtual {p0}, Lcom/petterp/floatingx/view/helper/FxViewLocationHelper;->getX()F

    move-result p1

    invoke-virtual {p0, p1, v1}, Lcom/petterp/floatingx/view/helper/FxViewLocationHelper;->safeX(FZ)F

    move-result p0

    iget p1, v2, Lcom/petterp/floatingx/assist/FxBoundaryConfig;->maxH:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    new-instance p2, Lkotlin/Pair;

    invoke-direct {p2, p0, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    :pswitch_2
    invoke-virtual {p0}, Lcom/petterp/floatingx/view/helper/FxViewLocationHelper;->getX()F

    move-result p1

    invoke-virtual {p0, p1, v1}, Lcom/petterp/floatingx/view/helper/FxViewLocationHelper;->safeX(FZ)F

    move-result p0

    iget p1, v2, Lcom/petterp/floatingx/assist/FxBoundaryConfig;->minH:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    new-instance p2, Lkotlin/Pair;

    invoke-direct {p2, p0, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    :pswitch_3
    if-eqz p1, :cond_1

    iget p1, v2, Lcom/petterp/floatingx/assist/FxBoundaryConfig;->minW:F

    goto :goto_1

    :cond_1
    iget p1, v2, Lcom/petterp/floatingx/assist/FxBoundaryConfig;->maxW:F

    :goto_1
    invoke-virtual {p0}, Lcom/petterp/floatingx/view/helper/FxViewLocationHelper;->getY()F

    move-result p2

    invoke-virtual {p0, p2, v1}, Lcom/petterp/floatingx/view/helper/FxViewLocationHelper;->safeY(FZ)F

    move-result p0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    new-instance p2, Lkotlin/Pair;

    invoke-direct {p2, p1, p0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    :pswitch_4
    iget p1, v2, Lcom/petterp/floatingx/assist/FxBoundaryConfig;->maxW:F

    invoke-virtual {p0}, Lcom/petterp/floatingx/view/helper/FxViewLocationHelper;->getY()F

    move-result p2

    invoke-virtual {p0, p2, v1}, Lcom/petterp/floatingx/view/helper/FxViewLocationHelper;->safeY(FZ)F

    move-result p0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    new-instance p2, Lkotlin/Pair;

    invoke-direct {p2, p1, p0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    :pswitch_5
    iget p1, v2, Lcom/petterp/floatingx/assist/FxBoundaryConfig;->minW:F

    invoke-virtual {p0}, Lcom/petterp/floatingx/view/helper/FxViewLocationHelper;->getY()F

    move-result p2

    invoke-virtual {p0, p2, v1}, Lcom/petterp/floatingx/view/helper/FxViewLocationHelper;->safeY(FZ)F

    move-result p0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    new-instance p2, Lkotlin/Pair;

    invoke-direct {p2, p1, p0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_2
    return-object p2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getX()F
    .locals 0

    iget-object p0, p0, Lcom/petterp/floatingx/view/helper/FxViewBasicHelper;->basicView:Lcom/petterp/floatingx/view/FxBasicContainerView;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getX()F

    move-result p0

    :goto_0
    return p0
.end method

.method public final getY()F
    .locals 0

    iget-object p0, p0, Lcom/petterp/floatingx/view/helper/FxViewBasicHelper;->basicView:Lcom/petterp/floatingx/view/FxBasicContainerView;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getY()F

    move-result p0

    :goto_0
    return p0
.end method

.method public final initConfig(Lcom/petterp/floatingx/view/FxBasicContainerView;)V
    .locals 1

    const-string v0, "parentView"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-super {p0, p1}, Lcom/petterp/floatingx/view/helper/FxViewBasicHelper;->initConfig(Lcom/petterp/floatingx/view/FxBasicContainerView;)V

    invoke-virtual {p1, p0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/petterp/floatingx/view/helper/FxViewLocationHelper;->orientation:I

    iget v0, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    iput v0, p0, Lcom/petterp/floatingx/view/helper/FxViewLocationHelper;->screenWidthDp:I

    iget p1, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    iput p1, p0, Lcom/petterp/floatingx/view/helper/FxViewLocationHelper;->screenHeightDp:I

    return-void
.end method

.method public final isNearestLeft(F)Z
    .locals 2

    iget v0, p0, Lcom/petterp/floatingx/view/helper/FxViewLocationHelper;->parentW:F

    const/4 v1, 0x2

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget p0, p0, Lcom/petterp/floatingx/view/helper/FxViewLocationHelper;->viewW:F

    div-float/2addr p0, v1

    add-float/2addr p0, p1

    cmpg-float p0, p0, v0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isNearestTop(F)Z
    .locals 2

    iget v0, p0, Lcom/petterp/floatingx/view/helper/FxViewLocationHelper;->parentH:F

    const/4 v1, 0x2

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget p0, p0, Lcom/petterp/floatingx/view/helper/FxViewLocationHelper;->viewH:F

    div-float/2addr p0, v1

    add-float/2addr p0, p1

    cmpg-float p0, p0, v0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    const-string v0, "config"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iget v1, p0, Lcom/petterp/floatingx/view/helper/FxViewLocationHelper;->orientation:I

    if-ne v0, v1, :cond_0

    iget v1, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v2, p0, Lcom/petterp/floatingx/view/helper/FxViewLocationHelper;->screenWidthDp:I

    if-ne v1, v2, :cond_0

    iget v1, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    iget v2, p0, Lcom/petterp/floatingx/view/helper/FxViewLocationHelper;->screenHeightDp:I

    if-eq v1, v2, :cond_1

    :cond_0
    iput v0, p0, Lcom/petterp/floatingx/view/helper/FxViewLocationHelper;->orientation:I

    iget v0, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    iput v0, p0, Lcom/petterp/floatingx/view/helper/FxViewLocationHelper;->screenWidthDp:I

    iget p1, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    iput p1, p0, Lcom/petterp/floatingx/view/helper/FxViewLocationHelper;->screenHeightDp:I

    invoke-virtual {p0}, Lcom/petterp/floatingx/view/helper/FxViewLocationHelper;->getX()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/petterp/floatingx/view/helper/FxViewLocationHelper;->isNearestLeft(F)Z

    move-result p1

    iput-boolean p1, p0, Lcom/petterp/floatingx/view/helper/FxViewLocationHelper;->restoreLeftStandard:Z

    invoke-virtual {p0}, Lcom/petterp/floatingx/view/helper/FxViewLocationHelper;->getY()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/petterp/floatingx/view/helper/FxViewLocationHelper;->isNearestTop(F)Z

    move-result p1

    iput-boolean p1, p0, Lcom/petterp/floatingx/view/helper/FxViewLocationHelper;->restoreTopStandard:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/petterp/floatingx/view/helper/FxViewLocationHelper;->needUpdateLocation:Z

    iput-boolean p1, p0, Lcom/petterp/floatingx/view/helper/FxViewLocationHelper;->needUpdateConfig:Z

    invoke-virtual {p0}, Lcom/petterp/floatingx/view/helper/FxViewBasicHelper;->getConfig()Lcom/petterp/floatingx/assist/helper/FxBasisHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/petterp/floatingx/assist/helper/FxBasisHelper;->getFxLog$floatingx_release()Lcom/petterp/floatingx/util/FxLog;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "fxView -> onConfigurationChanged:[screenChanged:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/petterp/floatingx/view/helper/FxViewLocationHelper;->needUpdateLocation:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x5d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/petterp/floatingx/util/FxLog;->d(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final onInit()V
    .locals 13

    invoke-virtual {p0}, Lcom/petterp/floatingx/view/helper/FxViewLocationHelper;->updateViewSize()V

    invoke-virtual {p0}, Lcom/petterp/floatingx/view/helper/FxViewBasicHelper;->getConfig()Lcom/petterp/floatingx/assist/helper/FxBasisHelper;

    move-result-object v0

    iget-boolean v0, v0, Lcom/petterp/floatingx/assist/helper/FxBasisHelper;->enableSaveDirection:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/petterp/floatingx/view/helper/FxViewBasicHelper;->getConfig()Lcom/petterp/floatingx/assist/helper/FxBasisHelper;

    move-result-object v0

    iget-object v0, v0, Lcom/petterp/floatingx/assist/helper/FxBasisHelper;->iFxConfigStorage:Lcom/petterp/floatingx/listener/IFxConfigStorage;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/petterp/floatingx/listener/IFxConfigStorage;->hasConfig()Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v1

    :goto_1
    const/4 v0, 0x0

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/petterp/floatingx/view/helper/FxViewBasicHelper;->getConfig()Lcom/petterp/floatingx/assist/helper/FxBasisHelper;

    move-result-object v2

    iget-object v3, v2, Lcom/petterp/floatingx/assist/helper/FxBasisHelper;->iFxConfigStorage:Lcom/petterp/floatingx/listener/IFxConfigStorage;

    if-nez v3, :cond_2

    move v3, v0

    goto :goto_2

    :cond_2
    invoke-interface {v3}, Lcom/petterp/floatingx/listener/IFxConfigStorage;->getX()F

    move-result v3

    :goto_2
    iget-object v2, v2, Lcom/petterp/floatingx/assist/helper/FxBasisHelper;->iFxConfigStorage:Lcom/petterp/floatingx/listener/IFxConfigStorage;

    if-nez v2, :cond_3

    goto :goto_3

    :cond_3
    invoke-interface {v2}, Lcom/petterp/floatingx/listener/IFxConfigStorage;->getY()F

    move-result v0

    :goto_3
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    new-instance v3, Lkotlin/Pair;

    invoke-direct {v3, v2, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v0, "history_location"

    goto/16 :goto_9

    :cond_4
    invoke-virtual {p0}, Lcom/petterp/floatingx/view/helper/FxViewBasicHelper;->getConfig()Lcom/petterp/floatingx/assist/helper/FxBasisHelper;

    move-result-object v2

    iget v3, v2, Lcom/petterp/floatingx/assist/helper/FxBasisHelper;->defaultX:F

    cmpg-float v3, v3, v0

    if-nez v3, :cond_9

    iget v2, v2, Lcom/petterp/floatingx/assist/helper/FxBasisHelper;->defaultY:F

    cmpg-float v2, v2, v0

    if-nez v2, :cond_9

    iget v2, p0, Lcom/petterp/floatingx/view/helper/FxViewLocationHelper;->parentW:F

    iget v3, p0, Lcom/petterp/floatingx/view/helper/FxViewLocationHelper;->parentH:F

    iget v4, p0, Lcom/petterp/floatingx/view/helper/FxViewLocationHelper;->viewW:F

    iget v5, p0, Lcom/petterp/floatingx/view/helper/FxViewLocationHelper;->viewH:F

    invoke-virtual {p0}, Lcom/petterp/floatingx/view/helper/FxViewBasicHelper;->getConfig()Lcom/petterp/floatingx/assist/helper/FxBasisHelper;

    move-result-object v6

    iget-object v7, v6, Lcom/petterp/floatingx/assist/helper/FxBasisHelper;->fxBorderMargin:Lcom/petterp/floatingx/assist/FxBorderMargin;

    iget v8, v7, Lcom/petterp/floatingx/assist/FxBorderMargin;->l:F

    iget-boolean v9, v6, Lcom/petterp/floatingx/assist/helper/FxBasisHelper;->enableEdgeRebound:Z

    if-eqz v9, :cond_5

    iget v10, v6, Lcom/petterp/floatingx/assist/helper/FxBasisHelper;->edgeOffset:F

    goto :goto_4

    :cond_5
    move v10, v0

    :goto_4
    add-float/2addr v10, v8

    iget v8, v7, Lcom/petterp/floatingx/assist/FxBorderMargin;->r:F

    if-eqz v9, :cond_6

    iget v11, v6, Lcom/petterp/floatingx/assist/helper/FxBasisHelper;->edgeOffset:F

    goto :goto_5

    :cond_6
    move v11, v0

    :goto_5
    add-float/2addr v11, v8

    iget v8, v7, Lcom/petterp/floatingx/assist/FxBorderMargin;->b:F

    if-eqz v9, :cond_7

    iget v12, v6, Lcom/petterp/floatingx/assist/helper/FxBasisHelper;->edgeOffset:F

    goto :goto_6

    :cond_7
    move v12, v0

    :goto_6
    add-float/2addr v12, v8

    iget v7, v7, Lcom/petterp/floatingx/assist/FxBorderMargin;->t:F

    if-eqz v9, :cond_8

    iget v8, v6, Lcom/petterp/floatingx/assist/helper/FxBasisHelper;->edgeOffset:F

    goto :goto_7

    :cond_8
    move v8, v0

    :goto_7
    add-float/2addr v8, v7

    iget-object v6, v6, Lcom/petterp/floatingx/assist/helper/FxBasisHelper;->gravity:Lcom/petterp/floatingx/assist/FxGravity;

    sget-object v7, Lcom/petterp/floatingx/view/helper/FxViewLocationHelper$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v6, v7, v6

    const/4 v7, 0x2

    packed-switch v6, :pswitch_data_0

    sub-float/2addr v2, v4

    int-to-float v4, v7

    div-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    sub-float/2addr v3, v5

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    new-instance v4, Lkotlin/Pair;

    invoke-direct {v4, v2, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_8

    :pswitch_0
    sub-float/2addr v2, v4

    int-to-float v4, v7

    div-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    sub-float/2addr v3, v5

    sub-float/2addr v3, v12

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    new-instance v4, Lkotlin/Pair;

    invoke-direct {v4, v2, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_8

    :pswitch_1
    sub-float/2addr v2, v4

    int-to-float v3, v7

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    new-instance v4, Lkotlin/Pair;

    invoke-direct {v4, v2, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_8

    :pswitch_2
    sub-float/2addr v2, v4

    sub-float/2addr v2, v11

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    sub-float/2addr v3, v5

    sub-float/2addr v3, v12

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    new-instance v4, Lkotlin/Pair;

    invoke-direct {v4, v2, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_8

    :pswitch_3
    sub-float/2addr v2, v4

    sub-float/2addr v2, v11

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    sub-float/2addr v3, v5

    int-to-float v4, v7

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    new-instance v4, Lkotlin/Pair;

    invoke-direct {v4, v2, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_8

    :pswitch_4
    sub-float/2addr v2, v4

    sub-float/2addr v2, v11

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    new-instance v4, Lkotlin/Pair;

    invoke-direct {v4, v2, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_8

    :pswitch_5
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    sub-float/2addr v3, v5

    sub-float/2addr v3, v12

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    new-instance v4, Lkotlin/Pair;

    invoke-direct {v4, v2, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_8

    :pswitch_6
    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    sub-float/2addr v3, v5

    int-to-float v4, v7

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    new-instance v4, Lkotlin/Pair;

    invoke-direct {v4, v2, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_8

    :pswitch_7
    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    new-instance v4, Lkotlin/Pair;

    invoke-direct {v4, v2, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_8
    invoke-virtual {p0}, Lcom/petterp/floatingx/view/helper/FxViewBasicHelper;->getConfig()Lcom/petterp/floatingx/assist/helper/FxBasisHelper;

    invoke-virtual {p0}, Lcom/petterp/floatingx/view/helper/FxViewBasicHelper;->getConfig()Lcom/petterp/floatingx/assist/helper/FxBasisHelper;

    invoke-virtual {v4}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    add-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v4}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    move-result v3

    add-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    new-instance v3, Lkotlin/Pair;

    invoke-direct {v3, v2, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v0, "default_location"

    goto :goto_9

    :cond_9
    invoke-virtual {p0}, Lcom/petterp/floatingx/view/helper/FxViewBasicHelper;->getConfig()Lcom/petterp/floatingx/assist/helper/FxBasisHelper;

    move-result-object v0

    iget v0, v0, Lcom/petterp/floatingx/assist/helper/FxBasisHelper;->defaultX:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p0}, Lcom/petterp/floatingx/view/helper/FxViewBasicHelper;->getConfig()Lcom/petterp/floatingx/assist/helper/FxBasisHelper;

    move-result-object v2

    iget v2, v2, Lcom/petterp/floatingx/assist/helper/FxBasisHelper;->defaultY:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    new-instance v3, Lkotlin/Pair;

    invoke-direct {v3, v0, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v0, "user_init_location"

    :goto_9
    invoke-virtual {v3}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    invoke-virtual {v3}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    move-result v3

    invoke-virtual {p0, v2, v1}, Lcom/petterp/floatingx/view/helper/FxViewLocationHelper;->safeX(FZ)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {p0, v3, v1}, Lcom/petterp/floatingx/view/helper/FxViewLocationHelper;->safeY(FZ)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    new-instance v4, Lkotlin/Pair;

    invoke-direct {v4, v2, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v4}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    invoke-virtual {v4}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    move-result v3

    iget-object v4, p0, Lcom/petterp/floatingx/view/helper/FxViewBasicHelper;->basicView:Lcom/petterp/floatingx/view/FxBasicContainerView;

    if-nez v4, :cond_a

    goto :goto_a

    :cond_a
    invoke-virtual {v4, v2, v3}, Lcom/petterp/floatingx/view/FxBasicContainerView;->updateXY(FF)V

    :goto_a
    iput-boolean v1, p0, Lcom/petterp/floatingx/view/helper/FxViewLocationHelper;->isInitLocation:Z

    invoke-virtual {p0}, Lcom/petterp/floatingx/view/helper/FxViewBasicHelper;->getConfig()Lcom/petterp/floatingx/assist/helper/FxBasisHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/petterp/floatingx/assist/helper/FxBasisHelper;->getFxLog$floatingx_release()Lcom/petterp/floatingx/util/FxLog;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "fxView -> initLocation: x:"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ",y:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ",way:["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x5d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/petterp/floatingx/util/FxLog;->d(Ljava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
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

.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    iget-boolean p1, p0, Lcom/petterp/floatingx/view/helper/FxViewLocationHelper;->needUpdateLocation:Z

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/petterp/floatingx/view/helper/FxViewLocationHelper;->updateViewSize()V

    invoke-virtual {p0}, Lcom/petterp/floatingx/view/helper/FxViewLocationHelper;->checkOrRestoreLocation()V

    return-void
.end method

.method public final onSizeChanged()V
    .locals 7

    invoke-virtual {p0}, Lcom/petterp/floatingx/view/helper/FxViewLocationHelper;->updateViewSize()V

    iget-boolean v0, p0, Lcom/petterp/floatingx/view/helper/FxViewLocationHelper;->isInitLocation:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/petterp/floatingx/view/helper/FxViewLocationHelper;->needUpdateLocation:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/petterp/floatingx/view/helper/FxViewLocationHelper;->checkOrRestoreLocation()V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/petterp/floatingx/view/helper/FxViewBasicHelper;->basicView:Lcom/petterp/floatingx/view/FxBasicContainerView;

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/petterp/floatingx/view/helper/FxViewLocationHelper;->getX()F

    move-result v0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/petterp/floatingx/view/helper/FxViewLocationHelper;->safeX(FZ)F

    move-result v0

    invoke-virtual {p0}, Lcom/petterp/floatingx/view/helper/FxViewLocationHelper;->getY()F

    move-result v3

    invoke-virtual {p0, v3, v2}, Lcom/petterp/floatingx/view/helper/FxViewLocationHelper;->safeY(FZ)F

    move-result v3

    const/4 v6, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x4

    move v2, v0

    invoke-static/range {v1 .. v6}, Lcom/petterp/floatingx/view/FxBasicContainerView;->internalMoveToXY$floatingx_release$default(Lcom/petterp/floatingx/view/FxBasicContainerView;FFZILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public final safeX(FZ)F
    .locals 2

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/petterp/floatingx/view/helper/FxViewBasicHelper;->getConfig()Lcom/petterp/floatingx/assist/helper/FxBasisHelper;

    move-result-object p2

    iget-boolean p2, p2, Lcom/petterp/floatingx/assist/helper/FxBasisHelper;->enableEdgeRebound:Z

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iget-object v0, p0, Lcom/petterp/floatingx/view/helper/FxViewLocationHelper;->moveBoundary:Lcom/petterp/floatingx/assist/FxBoundaryConfig;

    iget-object p0, p0, Lcom/petterp/floatingx/view/helper/FxViewLocationHelper;->moveIngBoundary:Lcom/petterp/floatingx/assist/FxBoundaryConfig;

    if-eqz p2, :cond_1

    iget v1, p0, Lcom/petterp/floatingx/assist/FxBoundaryConfig;->minW:F

    goto :goto_1

    :cond_1
    iget v1, v0, Lcom/petterp/floatingx/assist/FxBoundaryConfig;->minW:F

    :goto_1
    if-eqz p2, :cond_2

    iget p0, p0, Lcom/petterp/floatingx/assist/FxBoundaryConfig;->maxW:F

    goto :goto_2

    :cond_2
    iget p0, v0, Lcom/petterp/floatingx/assist/FxBoundaryConfig;->maxW:F

    :goto_2
    cmpg-float p2, p1, v1

    if-gez p2, :cond_3

    move p1, v1

    goto :goto_3

    :cond_3
    cmpl-float p2, p1, p0

    if-lez p2, :cond_4

    move p1, p0

    :cond_4
    :goto_3
    return p1
.end method

.method public final safeY(FZ)F
    .locals 2

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/petterp/floatingx/view/helper/FxViewBasicHelper;->getConfig()Lcom/petterp/floatingx/assist/helper/FxBasisHelper;

    move-result-object p2

    iget-boolean p2, p2, Lcom/petterp/floatingx/assist/helper/FxBasisHelper;->enableEdgeRebound:Z

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iget-object v0, p0, Lcom/petterp/floatingx/view/helper/FxViewLocationHelper;->moveBoundary:Lcom/petterp/floatingx/assist/FxBoundaryConfig;

    iget-object p0, p0, Lcom/petterp/floatingx/view/helper/FxViewLocationHelper;->moveIngBoundary:Lcom/petterp/floatingx/assist/FxBoundaryConfig;

    if-eqz p2, :cond_1

    iget v1, p0, Lcom/petterp/floatingx/assist/FxBoundaryConfig;->minH:F

    goto :goto_1

    :cond_1
    iget v1, v0, Lcom/petterp/floatingx/assist/FxBoundaryConfig;->minH:F

    :goto_1
    if-eqz p2, :cond_2

    iget p0, p0, Lcom/petterp/floatingx/assist/FxBoundaryConfig;->maxH:F

    goto :goto_2

    :cond_2
    iget p0, v0, Lcom/petterp/floatingx/assist/FxBoundaryConfig;->maxH:F

    :goto_2
    cmpg-float p2, p1, v1

    if-gez p2, :cond_3

    move p1, v1

    goto :goto_3

    :cond_3
    cmpl-float p2, p1, p0

    if-lez p2, :cond_4

    move p1, p0

    :cond_4
    :goto_3
    return p1
.end method

.method public final updateViewSize()V
    .locals 11

    iget-object v0, p0, Lcom/petterp/floatingx/view/helper/FxViewBasicHelper;->basicView:Lcom/petterp/floatingx/view/FxBasicContainerView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/petterp/floatingx/view/FxBasicContainerView;->parentSize()Lkotlin/Pair;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {v1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {v1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v4, p0, Lcom/petterp/floatingx/view/helper/FxViewLocationHelper;->parentW:F

    int-to-float v2, v2

    cmpg-float v4, v4, v2

    if-nez v4, :cond_2

    iget v4, p0, Lcom/petterp/floatingx/view/helper/FxViewLocationHelper;->parentH:F

    int-to-float v5, v1

    cmpg-float v4, v4, v5

    if-nez v4, :cond_2

    iget v4, p0, Lcom/petterp/floatingx/view/helper/FxViewLocationHelper;->viewW:F

    cmpg-float v4, v4, v0

    if-nez v4, :cond_2

    iget v4, p0, Lcom/petterp/floatingx/view/helper/FxViewLocationHelper;->viewH:F

    cmpg-float v4, v4, v3

    if-nez v4, :cond_2

    return-void

    :cond_2
    iput v2, p0, Lcom/petterp/floatingx/view/helper/FxViewLocationHelper;->parentW:F

    int-to-float v1, v1

    iput v1, p0, Lcom/petterp/floatingx/view/helper/FxViewLocationHelper;->parentH:F

    iput v0, p0, Lcom/petterp/floatingx/view/helper/FxViewLocationHelper;->viewW:F

    iput v3, p0, Lcom/petterp/floatingx/view/helper/FxViewLocationHelper;->viewH:F

    invoke-virtual {p0}, Lcom/petterp/floatingx/view/helper/FxViewBasicHelper;->getConfig()Lcom/petterp/floatingx/assist/helper/FxBasisHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/petterp/floatingx/view/helper/FxViewLocationHelper;->moveIngBoundary:Lcom/petterp/floatingx/assist/FxBoundaryConfig;

    const/4 v4, 0x0

    iput v4, v2, Lcom/petterp/floatingx/assist/FxBoundaryConfig;->minW:F

    iget v4, p0, Lcom/petterp/floatingx/view/helper/FxViewLocationHelper;->parentW:F

    iget v5, p0, Lcom/petterp/floatingx/view/helper/FxViewLocationHelper;->viewW:F

    sub-float/2addr v4, v5

    iput v4, v2, Lcom/petterp/floatingx/assist/FxBoundaryConfig;->maxW:F

    iget v4, v1, Lcom/petterp/floatingx/assist/helper/FxBasisHelper;->statsBarHeight:I

    int-to-float v4, v4

    iput v4, v2, Lcom/petterp/floatingx/assist/FxBoundaryConfig;->minH:F

    iget v4, p0, Lcom/petterp/floatingx/view/helper/FxViewLocationHelper;->parentH:F

    iget v5, p0, Lcom/petterp/floatingx/view/helper/FxViewLocationHelper;->viewH:F

    sub-float/2addr v4, v5

    iget v5, v1, Lcom/petterp/floatingx/assist/helper/FxBasisHelper;->navigationBarHeight:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    iput v4, v2, Lcom/petterp/floatingx/assist/FxBoundaryConfig;->maxH:F

    iget-object v4, p0, Lcom/petterp/floatingx/view/helper/FxViewLocationHelper;->moveBoundary:Lcom/petterp/floatingx/assist/FxBoundaryConfig;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v5, v2, Lcom/petterp/floatingx/assist/FxBoundaryConfig;->minW:F

    iput v5, v4, Lcom/petterp/floatingx/assist/FxBoundaryConfig;->minW:F

    iget v6, v2, Lcom/petterp/floatingx/assist/FxBoundaryConfig;->maxW:F

    iput v6, v4, Lcom/petterp/floatingx/assist/FxBoundaryConfig;->maxW:F

    iget v7, v2, Lcom/petterp/floatingx/assist/FxBoundaryConfig;->minH:F

    iput v7, v4, Lcom/petterp/floatingx/assist/FxBoundaryConfig;->minH:F

    iget v8, v2, Lcom/petterp/floatingx/assist/FxBoundaryConfig;->maxH:F

    iput v8, v4, Lcom/petterp/floatingx/assist/FxBoundaryConfig;->maxH:F

    iget-object v9, v1, Lcom/petterp/floatingx/assist/helper/FxBasisHelper;->fxBorderMargin:Lcom/petterp/floatingx/assist/FxBorderMargin;

    iget v10, v9, Lcom/petterp/floatingx/assist/FxBorderMargin;->l:F

    iget v1, v1, Lcom/petterp/floatingx/assist/helper/FxBasisHelper;->edgeOffset:F

    add-float/2addr v10, v1

    add-float/2addr v10, v5

    iput v10, v4, Lcom/petterp/floatingx/assist/FxBoundaryConfig;->minW:F

    iget v5, v9, Lcom/petterp/floatingx/assist/FxBorderMargin;->r:F

    add-float/2addr v5, v1

    sub-float/2addr v6, v5

    iput v6, v4, Lcom/petterp/floatingx/assist/FxBoundaryConfig;->maxW:F

    iget v5, v9, Lcom/petterp/floatingx/assist/FxBorderMargin;->t:F

    add-float/2addr v5, v1

    add-float/2addr v5, v7

    iput v5, v4, Lcom/petterp/floatingx/assist/FxBoundaryConfig;->minH:F

    iget v5, v9, Lcom/petterp/floatingx/assist/FxBorderMargin;->b:F

    add-float/2addr v5, v1

    sub-float/2addr v8, v5

    iput v8, v4, Lcom/petterp/floatingx/assist/FxBoundaryConfig;->maxH:F

    invoke-virtual {p0}, Lcom/petterp/floatingx/view/helper/FxViewBasicHelper;->getConfig()Lcom/petterp/floatingx/assist/helper/FxBasisHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/petterp/floatingx/assist/helper/FxBasisHelper;->getFxLog$floatingx_release()Lcom/petterp/floatingx/util/FxLog;

    move-result-object v1

    const-string v5, "fxView -> updateMoveBoundary, moveBoundary:"

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/petterp/floatingx/util/FxLog;->d(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/petterp/floatingx/view/helper/FxViewBasicHelper;->getConfig()Lcom/petterp/floatingx/assist/helper/FxBasisHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/petterp/floatingx/assist/helper/FxBasisHelper;->getFxLog$floatingx_release()Lcom/petterp/floatingx/util/FxLog;

    move-result-object v1

    const-string v4, "fxView -> updateMoveIngBoundary, moveIngBoundary:"

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/petterp/floatingx/util/FxLog;->d(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/petterp/floatingx/view/helper/FxViewBasicHelper;->getConfig()Lcom/petterp/floatingx/assist/helper/FxBasisHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/petterp/floatingx/assist/helper/FxBasisHelper;->getFxLog$floatingx_release()Lcom/petterp/floatingx/util/FxLog;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "fxView -> updateSize: parentW:"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/petterp/floatingx/view/helper/FxViewLocationHelper;->parentW:F

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ",parentH:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/petterp/floatingx/view/helper/FxViewLocationHelper;->parentH:F

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, ",viewW:"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, ",viewH:"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/petterp/floatingx/util/FxLog;->d(Ljava/lang/String;)V

    return-void
.end method
