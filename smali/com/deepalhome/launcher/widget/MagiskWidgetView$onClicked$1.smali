.class public final Lcom/deepalhome/launcher/widget/MagiskWidgetView$onClicked$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic $progressDialog:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/deepalhome/launcher/widget/MagiskWidgetView;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/widget/MagiskWidgetView;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/widget/MagiskWidgetView$onClicked$1;->this$0:Lcom/deepalhome/launcher/widget/MagiskWidgetView;

    iput-object p2, p0, Lcom/deepalhome/launcher/widget/MagiskWidgetView$onClicked$1;->$progressDialog:Lkotlin/jvm/internal/Ref$ObjectRef;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    sget-object v0, Lcom/deepalhome/launcher/util/RootAccessState;->INSTANCE:Lcom/deepalhome/launcher/util/RootAccessState;

    new-instance v1, Lcom/deepalhome/launcher/widget/MagiskWidgetView$onClicked$1$1;

    iget-object v2, p0, Lcom/deepalhome/launcher/widget/MagiskWidgetView$onClicked$1;->this$0:Lcom/deepalhome/launcher/widget/MagiskWidgetView;

    iget-object p0, p0, Lcom/deepalhome/launcher/widget/MagiskWidgetView$onClicked$1;->$progressDialog:Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v1, v2, p0}, Lcom/deepalhome/launcher/widget/MagiskWidgetView$onClicked$1$1;-><init>(Lcom/deepalhome/launcher/widget/MagiskWidgetView;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/deepalhome/launcher/util/RootAccessState$probeCurrentRootAccessAsync$1;

    const-wide/16 v2, 0xfa0

    invoke-direct {p0, v2, v3, v1}, Lcom/deepalhome/launcher/util/RootAccessState$probeCurrentRootAccessAsync$1;-><init>(JLkotlin/jvm/functions/Function1;)V

    invoke-static {p0}, Lcom/blankj/utilcode/util/ThreadUtils;->executeBySingle(Lcom/blankj/utilcode/util/ThreadUtils$Task;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
