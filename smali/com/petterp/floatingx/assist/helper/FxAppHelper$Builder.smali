.class public final Lcom/petterp/floatingx/assist/helper/FxAppHelper$Builder;
.super Lcom/petterp/floatingx/assist/helper/FxBasisHelper$Builder;
.source "SourceFile"


# instance fields
.field public final blackFilterList:Ljava/util/ArrayList;

.field public context:Landroid/app/Application;

.field public enableSafeArea:Z

.field public final isEnableAllInstall:Z

.field public scopeEnum:Lcom/petterp/floatingx/assist/FxScopeType;

.field public tag:Ljava/lang/String;

.field public final whiteInsertList:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/petterp/floatingx/assist/helper/FxBasisHelper$Builder;-><init>()V

    const-string v0, "FX_DEFAULT_TAG"

    iput-object v0, p0, Lcom/petterp/floatingx/assist/helper/FxAppHelper$Builder;->tag:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/petterp/floatingx/assist/helper/FxAppHelper$Builder;->isEnableAllInstall:Z

    sget-object v1, Lcom/petterp/floatingx/assist/FxScopeType;->APP:Lcom/petterp/floatingx/assist/FxScopeType;

    iput-object v1, p0, Lcom/petterp/floatingx/assist/helper/FxAppHelper$Builder;->scopeEnum:Lcom/petterp/floatingx/assist/FxScopeType;

    iput-boolean v0, p0, Lcom/petterp/floatingx/assist/helper/FxAppHelper$Builder;->enableSafeArea:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/petterp/floatingx/assist/helper/FxAppHelper$Builder;->whiteInsertList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/petterp/floatingx/assist/helper/FxAppHelper$Builder;->blackFilterList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final build()Lcom/petterp/floatingx/assist/helper/FxAppHelper;
    .locals 3

    invoke-virtual {p0}, Lcom/petterp/floatingx/assist/helper/FxAppHelper$Builder;->buildHelper$1()Lcom/petterp/floatingx/assist/helper/FxAppHelper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/petterp/floatingx/assist/helper/FxBasisHelper;->setEnableFx$floatingx_release(Z)V

    iget v2, p0, Lcom/petterp/floatingx/assist/helper/FxBasisHelper$Builder;->layoutId:I

    iput v2, v0, Lcom/petterp/floatingx/assist/helper/FxBasisHelper;->layoutId:I

    iget-object v2, p0, Lcom/petterp/floatingx/assist/helper/FxBasisHelper$Builder;->gravity:Lcom/petterp/floatingx/assist/FxGravity;

    iput-object v2, v0, Lcom/petterp/floatingx/assist/helper/FxBasisHelper;->gravity:Lcom/petterp/floatingx/assist/FxGravity;

    iget-object v2, p0, Lcom/petterp/floatingx/assist/helper/FxBasisHelper$Builder;->displayMode:Lcom/petterp/floatingx/assist/FxDisplayMode;

    iput-object v2, v0, Lcom/petterp/floatingx/assist/helper/FxBasisHelper;->displayMode:Lcom/petterp/floatingx/assist/FxDisplayMode;

    iget v2, p0, Lcom/petterp/floatingx/assist/helper/FxBasisHelper$Builder;->defaultX:F

    iput v2, v0, Lcom/petterp/floatingx/assist/helper/FxBasisHelper;->defaultX:F

    iget v2, p0, Lcom/petterp/floatingx/assist/helper/FxBasisHelper$Builder;->defaultY:F

    iput v2, v0, Lcom/petterp/floatingx/assist/helper/FxBasisHelper;->defaultY:F

    iget v2, p0, Lcom/petterp/floatingx/assist/helper/FxBasisHelper$Builder;->edgeOffset:F

    iput v2, v0, Lcom/petterp/floatingx/assist/helper/FxBasisHelper;->edgeOffset:F

    iget-object v2, p0, Lcom/petterp/floatingx/assist/helper/FxBasisHelper$Builder;->fxBorderMargin:Lcom/petterp/floatingx/assist/FxBorderMargin;

    iput-object v2, v0, Lcom/petterp/floatingx/assist/helper/FxBasisHelper;->fxBorderMargin:Lcom/petterp/floatingx/assist/FxBorderMargin;

    iget-object v2, p0, Lcom/petterp/floatingx/assist/helper/FxBasisHelper$Builder;->edgeAdsorbDirection:Lcom/petterp/floatingx/assist/FxAdsorbDirection;

    iput-object v2, v0, Lcom/petterp/floatingx/assist/helper/FxBasisHelper;->adsorbDirection:Lcom/petterp/floatingx/assist/FxAdsorbDirection;

    iget-boolean v2, p0, Lcom/petterp/floatingx/assist/helper/FxBasisHelper$Builder;->enableEdgeAdsorption:Z

    iput-boolean v2, v0, Lcom/petterp/floatingx/assist/helper/FxBasisHelper;->enableEdgeAdsorption:Z

    iget-boolean v2, p0, Lcom/petterp/floatingx/assist/helper/FxBasisHelper$Builder;->enableEdgeRebound:Z

    iput-boolean v2, v0, Lcom/petterp/floatingx/assist/helper/FxBasisHelper;->enableEdgeRebound:Z

    iget-boolean v2, p0, Lcom/petterp/floatingx/assist/helper/FxBasisHelper$Builder;->enableSaveDirection:Z

    iput-boolean v2, v0, Lcom/petterp/floatingx/assist/helper/FxBasisHelper;->enableSaveDirection:Z

    iput-boolean v1, v0, Lcom/petterp/floatingx/assist/helper/FxBasisHelper;->enableClickListener:Z

    iget-object v2, p0, Lcom/petterp/floatingx/assist/helper/FxBasisHelper$Builder;->fxLogTag:Ljava/lang/String;

    iput-object v2, v0, Lcom/petterp/floatingx/assist/helper/FxBasisHelper;->fxLogTag:Ljava/lang/String;

    iget-object v2, p0, Lcom/petterp/floatingx/assist/helper/FxBasisHelper$Builder;->iFxTouchListener:Lcom/petterp/floatingx/listener/IFxTouchListener;

    iput-object v2, v0, Lcom/petterp/floatingx/assist/helper/FxBasisHelper;->iFxTouchListener:Lcom/petterp/floatingx/listener/IFxTouchListener;

    iget-object v2, p0, Lcom/petterp/floatingx/assist/helper/FxBasisHelper$Builder;->iFxViewLifecycles:Ljava/util/ArrayList;

    iput-object v2, v0, Lcom/petterp/floatingx/assist/helper/FxBasisHelper;->iFxViewLifecycles:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/petterp/floatingx/assist/helper/FxBasisHelper$Builder;->iFxConfigStorage:Lcom/petterp/floatingx/listener/IFxConfigStorage;

    iput-object v2, v0, Lcom/petterp/floatingx/assist/helper/FxBasisHelper;->iFxConfigStorage:Lcom/petterp/floatingx/listener/IFxConfigStorage;

    invoke-virtual {v0, v1}, Lcom/petterp/floatingx/assist/helper/FxBasisHelper;->setEnableFx$floatingx_release(Z)V

    iget-object p0, p0, Lcom/petterp/floatingx/assist/helper/FxAppHelper$Builder;->scopeEnum:Lcom/petterp/floatingx/assist/FxScopeType;

    sget-object v1, Lcom/petterp/floatingx/assist/FxScopeType;->SYSTEM:Lcom/petterp/floatingx/assist/FxScopeType;

    if-ne p0, v1, :cond_0

    const-string p0, "system"

    invoke-virtual {v0, p0}, Lcom/petterp/floatingx/assist/helper/FxBasisHelper;->initLog$floatingx_release(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p0, "app"

    invoke-virtual {v0, p0}, Lcom/petterp/floatingx/assist/helper/FxBasisHelper;->initLog$floatingx_release(Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method public final buildHelper$1()Lcom/petterp/floatingx/assist/helper/FxAppHelper;
    .locals 9

    iget-object v0, p0, Lcom/petterp/floatingx/assist/helper/FxAppHelper$Builder;->context:Landroid/app/Application;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/petterp/floatingx/assist/helper/FxAppHelper;

    iget-object v2, p0, Lcom/petterp/floatingx/assist/helper/FxAppHelper$Builder;->tag:Ljava/lang/String;

    iget-object v3, p0, Lcom/petterp/floatingx/assist/helper/FxAppHelper$Builder;->context:Landroid/app/Application;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/petterp/floatingx/assist/helper/FxAppHelper$Builder;->blackFilterList:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/petterp/floatingx/assist/helper/FxAppHelper$Builder;->whiteInsertList:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/petterp/floatingx/assist/helper/FxAppHelper$Builder;->scopeEnum:Lcom/petterp/floatingx/assist/FxScopeType;

    iget-boolean v8, p0, Lcom/petterp/floatingx/assist/helper/FxAppHelper$Builder;->enableSafeArea:Z

    iget-boolean v6, p0, Lcom/petterp/floatingx/assist/helper/FxAppHelper$Builder;->isEnableAllInstall:Z

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/petterp/floatingx/assist/helper/FxAppHelper;-><init>(Ljava/lang/String;Landroid/app/Application;Ljava/util/ArrayList;Ljava/util/ArrayList;ZLcom/petterp/floatingx/assist/FxScopeType;Z)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "context == null, please call AppHelper.setContext(context) to set context"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final setContext(Landroid/content/Context;)V
    .locals 1

    instance-of v0, p1, Landroid/app/Application;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/app/Application;

    iput-object p1, p0, Lcom/petterp/floatingx/assist/helper/FxAppHelper$Builder;->context:Landroid/app/Application;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_1

    check-cast p1, Landroid/app/Application;

    iput-object p1, p0, Lcom/petterp/floatingx/assist/helper/FxAppHelper$Builder;->context:Landroid/app/Application;

    :goto_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "null cannot be cast to non-null type android.app.Application"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final setTag(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iput-object p1, p0, Lcom/petterp/floatingx/assist/helper/FxAppHelper$Builder;->tag:Ljava/lang/String;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Floating window tag cannot be[\"\"],please set a valid tag"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
