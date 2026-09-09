.class public final Lcom/deepalhome/launcher/navigation/render/GridRenderCatalog$ClimateQuickActionRenderer$bind$2;
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

    iput-object p1, p0, Lcom/deepalhome/launcher/navigation/render/GridRenderCatalog$ClimateQuickActionRenderer$bind$2;->$environment:Lcom/deepalhome/launcher/navigation/render/GridRenderEnvironment;

    iput-object p2, p0, Lcom/deepalhome/launcher/navigation/render/GridRenderCatalog$ClimateQuickActionRenderer$bind$2;->$view:Landroid/view/View;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/deepalhome/launcher/navigation/render/GridRenderCatalog$ClimateQuickActionRenderer$bind$2;->$environment:Lcom/deepalhome/launcher/navigation/render/GridRenderEnvironment;

    iget-object v0, v0, Lcom/deepalhome/launcher/navigation/render/GridRenderEnvironment;->dismissTransientUiExcept:Lkotlin/jvm/functions/Function1;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/render/GridRenderCatalog$ClimateQuickActionRenderer$bind$2;->$view:Landroid/view/View;

    invoke-interface {v0, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
