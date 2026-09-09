.class public abstract Lcom/petterp/floatingx/view/helper/FxViewBasicHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public basicView:Lcom/petterp/floatingx/view/FxBasicContainerView;

.field public config:Lcom/petterp/floatingx/assist/helper/FxBasisHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getConfig()Lcom/petterp/floatingx/assist/helper/FxBasisHelper;
    .locals 0

    iget-object p0, p0, Lcom/petterp/floatingx/view/helper/FxViewBasicHelper;->config:Lcom/petterp/floatingx/assist/helper/FxBasisHelper;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "config"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public initConfig(Lcom/petterp/floatingx/view/FxBasicContainerView;)V
    .locals 1

    const-string v0, "parentView"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/petterp/floatingx/view/helper/FxViewBasicHelper;->basicView:Lcom/petterp/floatingx/view/FxBasicContainerView;

    invoke-virtual {p1}, Lcom/petterp/floatingx/view/FxBasicContainerView;->getHelper()Lcom/petterp/floatingx/assist/helper/FxBasisHelper;

    move-result-object p1

    const-string v0, "<set-?>"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/petterp/floatingx/view/helper/FxViewBasicHelper;->config:Lcom/petterp/floatingx/assist/helper/FxBasisHelper;

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    const-string p0, "config"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onInit()V
    .locals 0

    return-void
.end method

.method public onPreCancel()V
    .locals 0

    return-void
.end method

.method public onSizeChanged()V
    .locals 0

    return-void
.end method
