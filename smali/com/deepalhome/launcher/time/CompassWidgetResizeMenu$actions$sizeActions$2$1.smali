.class public final Lcom/deepalhome/launcher/time/CompassWidgetResizeMenu$actions$sizeActions$2$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic $onResize:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2;"
        }
    .end annotation
.end field

.field final synthetic $preset:Lcom/deepalhome/launcher/time/CompassWidgetSizePreset;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function2;Lcom/deepalhome/launcher/time/CompassWidgetSizePreset;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/time/CompassWidgetResizeMenu$actions$sizeActions$2$1;->$onResize:Lkotlin/jvm/functions/Function2;

    iput-object p2, p0, Lcom/deepalhome/launcher/time/CompassWidgetResizeMenu$actions$sizeActions$2$1;->$preset:Lcom/deepalhome/launcher/time/CompassWidgetSizePreset;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/deepalhome/launcher/time/CompassWidgetResizeMenu$actions$sizeActions$2$1;->$onResize:Lkotlin/jvm/functions/Function2;

    iget-object v1, p0, Lcom/deepalhome/launcher/time/CompassWidgetResizeMenu$actions$sizeActions$2$1;->$preset:Lcom/deepalhome/launcher/time/CompassWidgetSizePreset;

    iget v1, v1, Lcom/deepalhome/launcher/time/CompassWidgetSizePreset;->width:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object p0, p0, Lcom/deepalhome/launcher/time/CompassWidgetResizeMenu$actions$sizeActions$2$1;->$preset:Lcom/deepalhome/launcher/time/CompassWidgetSizePreset;

    iget p0, p0, Lcom/deepalhome/launcher/time/CompassWidgetSizePreset;->height:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
