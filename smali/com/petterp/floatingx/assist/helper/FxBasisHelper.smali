.class public abstract Lcom/petterp/floatingx/assist/helper/FxBasisHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public adsorbDirection:Lcom/petterp/floatingx/assist/FxAdsorbDirection;

.field public defaultX:F

.field public defaultY:F

.field public displayMode:Lcom/petterp/floatingx/assist/FxDisplayMode;

.field public edgeOffset:F

.field public enableClickListener:Z

.field public enableEdgeAdsorption:Z

.field public enableEdgeRebound:Z

.field public enableFx:Z

.field public enableSaveDirection:Z

.field public fxBorderMargin:Lcom/petterp/floatingx/assist/FxBorderMargin;

.field public fxLog:Lcom/petterp/floatingx/util/FxLog;

.field public fxLogTag:Ljava/lang/String;

.field public gravity:Lcom/petterp/floatingx/assist/FxGravity;

.field public iFxConfigStorage:Lcom/petterp/floatingx/listener/IFxConfigStorage;

.field public iFxTouchListener:Lcom/petterp/floatingx/listener/IFxTouchListener;

.field public iFxViewLifecycles:Ljava/util/ArrayList;

.field public layoutId:I

.field public navigationBarHeight:I

.field public reInstall:Z

.field public statsBarHeight:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/petterp/floatingx/assist/FxGravity;->DEFAULT:Lcom/petterp/floatingx/assist/FxGravity;

    iput-object v0, p0, Lcom/petterp/floatingx/assist/helper/FxBasisHelper;->gravity:Lcom/petterp/floatingx/assist/FxGravity;

    new-instance v0, Lcom/petterp/floatingx/assist/FxBorderMargin;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/petterp/floatingx/assist/FxBorderMargin;-><init>(I)V

    iput-object v0, p0, Lcom/petterp/floatingx/assist/helper/FxBasisHelper;->fxBorderMargin:Lcom/petterp/floatingx/assist/FxBorderMargin;

    sget-object v0, Lcom/petterp/floatingx/assist/FxDisplayMode;->Normal:Lcom/petterp/floatingx/assist/FxDisplayMode;

    iput-object v0, p0, Lcom/petterp/floatingx/assist/helper/FxBasisHelper;->displayMode:Lcom/petterp/floatingx/assist/FxDisplayMode;

    sget-object v0, Lcom/petterp/floatingx/assist/FxAdsorbDirection;->LEFT_OR_RIGHT:Lcom/petterp/floatingx/assist/FxAdsorbDirection;

    iput-object v0, p0, Lcom/petterp/floatingx/assist/helper/FxBasisHelper;->adsorbDirection:Lcom/petterp/floatingx/assist/FxAdsorbDirection;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/petterp/floatingx/assist/helper/FxBasisHelper;->enableEdgeAdsorption:Z

    iput-boolean v0, p0, Lcom/petterp/floatingx/assist/helper/FxBasisHelper;->enableEdgeRebound:Z

    iput-boolean v0, p0, Lcom/petterp/floatingx/assist/helper/FxBasisHelper;->enableClickListener:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/petterp/floatingx/assist/helper/FxBasisHelper;->iFxViewLifecycles:Ljava/util/ArrayList;

    const-string v0, ""

    iput-object v0, p0, Lcom/petterp/floatingx/assist/helper/FxBasisHelper;->fxLogTag:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getFxLog$floatingx_release()Lcom/petterp/floatingx/util/FxLog;
    .locals 0

    iget-object p0, p0, Lcom/petterp/floatingx/assist/helper/FxBasisHelper;->fxLog:Lcom/petterp/floatingx/util/FxLog;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "fxLog"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final initLog$floatingx_release(Ljava/lang/String;)V
    .locals 4

    sget-object v0, Lcom/petterp/floatingx/util/FxLog;->Companion:Lcom/petterp/floatingx/util/FxLog$Companion;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x2d

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/petterp/floatingx/assist/helper/FxBasisHelper;->fxLogTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "tag"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Lcom/petterp/floatingx/util/FxLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/petterp/floatingx/util/FxLog;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/petterp/floatingx/util/FxLog;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/petterp/floatingx/assist/helper/FxBasisHelper;->fxLog:Lcom/petterp/floatingx/util/FxLog;

    return-void
.end method

.method public final setEnableFx$floatingx_release(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/petterp/floatingx/assist/helper/FxBasisHelper;->enableFx:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/petterp/floatingx/assist/helper/FxBasisHelper;->enableFx:Z

    invoke-virtual {p0}, Lcom/petterp/floatingx/assist/helper/FxBasisHelper;->getFxLog$floatingx_release()Lcom/petterp/floatingx/util/FxLog;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "update enableFx: ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p1, 0x5d

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/petterp/floatingx/util/FxLog;->v(Ljava/lang/String;)V

    return-void
.end method
