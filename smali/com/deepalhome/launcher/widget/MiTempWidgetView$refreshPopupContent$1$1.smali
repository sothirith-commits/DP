.class public final Lcom/deepalhome/launcher/widget/MiTempWidgetView$refreshPopupContent$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic $device:Lcom/deepalhome/mitemp/MiTempDevice;

.field final synthetic $devices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/deepalhome/mitemp/MiTempDevice;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/deepalhome/launcher/widget/MiTempWidgetView;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/widget/MiTempWidgetView;Lcom/deepalhome/mitemp/MiTempDevice;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/widget/MiTempWidgetView$refreshPopupContent$1$1;->this$0:Lcom/deepalhome/launcher/widget/MiTempWidgetView;

    iput-object p2, p0, Lcom/deepalhome/launcher/widget/MiTempWidgetView$refreshPopupContent$1$1;->$device:Lcom/deepalhome/mitemp/MiTempDevice;

    iput-object p3, p0, Lcom/deepalhome/launcher/widget/MiTempWidgetView$refreshPopupContent$1$1;->$devices:Ljava/util/List;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/deepalhome/launcher/widget/MiTempWidgetView$refreshPopupContent$1$1;->this$0:Lcom/deepalhome/launcher/widget/MiTempWidgetView;

    iget-object v1, p0, Lcom/deepalhome/launcher/widget/MiTempWidgetView$refreshPopupContent$1$1;->$device:Lcom/deepalhome/mitemp/MiTempDevice;

    iget-object v1, v1, Lcom/deepalhome/mitemp/MiTempDevice;->address:Ljava/lang/String;

    sget v2, Lcom/deepalhome/launcher/widget/MiTempWidgetView;->$r8$clinit:I

    invoke-virtual {v0, v1}, Lcom/deepalhome/launcher/widget/MiTempWidgetView;->bindToDevice(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/deepalhome/launcher/widget/MiTempWidgetView$refreshPopupContent$1$1;->this$0:Lcom/deepalhome/launcher/widget/MiTempWidgetView;

    iget-object v1, p0, Lcom/deepalhome/launcher/widget/MiTempWidgetView$refreshPopupContent$1$1;->$devices:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/deepalhome/launcher/widget/MiTempWidgetView;->refreshContent(Ljava/util/List;)V

    iget-object p0, p0, Lcom/deepalhome/launcher/widget/MiTempWidgetView$refreshPopupContent$1$1;->this$0:Lcom/deepalhome/launcher/widget/MiTempWidgetView;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/widget/MiTempWidgetView;->dismissDeviceSelector()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
