.class public abstract Lcom/petterp/floatingx/assist/helper/FxBasisHelper$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public defaultX:F

.field public defaultY:F

.field public displayMode:Lcom/petterp/floatingx/assist/FxDisplayMode;

.field public edgeAdsorbDirection:Lcom/petterp/floatingx/assist/FxAdsorbDirection;

.field public edgeOffset:F

.field public enableEdgeAdsorption:Z

.field public final enableEdgeRebound:Z

.field public enableSaveDirection:Z

.field public final fxBorderMargin:Lcom/petterp/floatingx/assist/FxBorderMargin;

.field public final fxLogTag:Ljava/lang/String;

.field public gravity:Lcom/petterp/floatingx/assist/FxGravity;

.field public iFxConfigStorage:Lcom/petterp/floatingx/listener/IFxConfigStorage;

.field public iFxTouchListener:Lcom/petterp/floatingx/listener/IFxTouchListener;

.field public final iFxViewLifecycles:Ljava/util/ArrayList;

.field public layoutId:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/petterp/floatingx/assist/FxGravity;->DEFAULT:Lcom/petterp/floatingx/assist/FxGravity;

    iput-object v0, p0, Lcom/petterp/floatingx/assist/helper/FxBasisHelper$Builder;->gravity:Lcom/petterp/floatingx/assist/FxGravity;

    sget-object v0, Lcom/petterp/floatingx/assist/FxDisplayMode;->Normal:Lcom/petterp/floatingx/assist/FxDisplayMode;

    iput-object v0, p0, Lcom/petterp/floatingx/assist/helper/FxBasisHelper$Builder;->displayMode:Lcom/petterp/floatingx/assist/FxDisplayMode;

    sget-object v0, Lcom/petterp/floatingx/assist/FxAdsorbDirection;->LEFT_OR_RIGHT:Lcom/petterp/floatingx/assist/FxAdsorbDirection;

    iput-object v0, p0, Lcom/petterp/floatingx/assist/helper/FxBasisHelper$Builder;->edgeAdsorbDirection:Lcom/petterp/floatingx/assist/FxAdsorbDirection;

    new-instance v0, Lcom/petterp/floatingx/assist/FxBorderMargin;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/petterp/floatingx/assist/FxBorderMargin;-><init>(I)V

    iput-object v0, p0, Lcom/petterp/floatingx/assist/helper/FxBasisHelper$Builder;->fxBorderMargin:Lcom/petterp/floatingx/assist/FxBorderMargin;

    new-instance v0, Lcom/petterp/floatingx/assist/FxBorderMargin;

    invoke-direct {v0, v1}, Lcom/petterp/floatingx/assist/FxBorderMargin;-><init>(I)V

    const-string v0, ""

    iput-object v0, p0, Lcom/petterp/floatingx/assist/helper/FxBasisHelper$Builder;->fxLogTag:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/petterp/floatingx/assist/helper/FxBasisHelper$Builder;->enableEdgeRebound:Z

    iput-boolean v0, p0, Lcom/petterp/floatingx/assist/helper/FxBasisHelper$Builder;->enableEdgeAdsorption:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/petterp/floatingx/assist/helper/FxBasisHelper$Builder;->iFxViewLifecycles:Ljava/util/ArrayList;

    return-void
.end method
