.class public final Lcom/deepalhome/launcher/app/AppCenterView$buildAppListPage$1$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/deepalhome/launcher/widget/WidgetDragShadowBuilder$TouchPointProvider;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/deepalhome/launcher/app/AppCenterView;


# direct methods
.method public synthetic constructor <init>(Lcom/deepalhome/launcher/app/AppCenterView;I)V
    .locals 0

    iput p2, p0, Lcom/deepalhome/launcher/app/AppCenterView$buildAppListPage$1$3$1;->$r8$classId:I

    iput-object p1, p0, Lcom/deepalhome/launcher/app/AppCenterView$buildAppListPage$1$3$1;->this$0:Lcom/deepalhome/launcher/app/AppCenterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getPoint()Landroid/graphics/Point;
    .locals 1

    iget v0, p0, Lcom/deepalhome/launcher/app/AppCenterView$buildAppListPage$1$3$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/deepalhome/launcher/app/AppCenterView$buildAppListPage$1$3$1;->this$0:Lcom/deepalhome/launcher/app/AppCenterView;

    invoke-static {p0}, Lcom/deepalhome/launcher/app/AppCenterView;->access$getTouchPoint$p(Lcom/deepalhome/launcher/app/AppCenterView;)Landroid/graphics/Point;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object p0, p0, Lcom/deepalhome/launcher/app/AppCenterView$buildAppListPage$1$3$1;->this$0:Lcom/deepalhome/launcher/app/AppCenterView;

    invoke-static {p0}, Lcom/deepalhome/launcher/app/AppCenterView;->access$getTouchPoint$p(Lcom/deepalhome/launcher/app/AppCenterView;)Landroid/graphics/Point;

    move-result-object p0

    return-object p0

    :pswitch_1
    iget-object p0, p0, Lcom/deepalhome/launcher/app/AppCenterView$buildAppListPage$1$3$1;->this$0:Lcom/deepalhome/launcher/app/AppCenterView;

    invoke-static {p0}, Lcom/deepalhome/launcher/app/AppCenterView;->access$getTouchPoint$p(Lcom/deepalhome/launcher/app/AppCenterView;)Landroid/graphics/Point;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
