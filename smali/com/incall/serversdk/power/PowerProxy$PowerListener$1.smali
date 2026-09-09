.class Lcom/incall/serversdk/power/PowerProxy$PowerListener$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/incall/serversdk/power/PowerProxy$PowerListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final this$1:Lcom/incall/serversdk/power/PowerProxy$PowerListener;


# direct methods
.method public constructor <init>(Lcom/incall/serversdk/power/PowerProxy$PowerListener;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/incall/serversdk/power/PowerProxy$PowerListener$1;->this$1:Lcom/incall/serversdk/power/PowerProxy$PowerListener;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 p1, 0x4

    if-eq v0, p1, :cond_1

    const/4 p1, 0x5

    if-eq v0, p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/incall/serversdk/power/PowerProxy$PowerListener$1;->this$1:Lcom/incall/serversdk/power/PowerProxy$PowerListener;

    iget-object p0, p0, Lcom/incall/serversdk/power/PowerProxy$PowerListener;->this$0:Lcom/incall/serversdk/power/PowerProxy;

    invoke-static {p0}, Lcom/incall/serversdk/power/PowerProxy;->access$400(Lcom/incall/serversdk/power/PowerProxy;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/incall/serversdk/power/PowerProxy$PowerListener$1;->this$1:Lcom/incall/serversdk/power/PowerProxy$PowerListener;

    iget-object p0, p0, Lcom/incall/serversdk/power/PowerProxy$PowerListener;->this$0:Lcom/incall/serversdk/power/PowerProxy;

    invoke-static {p0}, Lcom/incall/serversdk/power/PowerProxy;->access$300(Lcom/incall/serversdk/power/PowerProxy;)V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/incall/serversdk/power/PowerProxy$PowerListener$1;->this$1:Lcom/incall/serversdk/power/PowerProxy$PowerListener;

    iget-object p0, p0, Lcom/incall/serversdk/power/PowerProxy$PowerListener;->this$0:Lcom/incall/serversdk/power/PowerProxy;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, p1}, Lcom/incall/serversdk/power/PowerProxy;->access$200(Lcom/incall/serversdk/power/PowerProxy;I)V

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lcom/incall/serversdk/power/PowerProxy$PowerListener$1;->this$1:Lcom/incall/serversdk/power/PowerProxy$PowerListener;

    iget-object p0, p0, Lcom/incall/serversdk/power/PowerProxy$PowerListener;->this$0:Lcom/incall/serversdk/power/PowerProxy;

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {p0, v0, p1}, Lcom/incall/serversdk/power/PowerProxy;->access$100(Lcom/incall/serversdk/power/PowerProxy;II)V

    goto :goto_0

    :cond_4
    iget-object p0, p0, Lcom/incall/serversdk/power/PowerProxy$PowerListener$1;->this$1:Lcom/incall/serversdk/power/PowerProxy$PowerListener;

    iget-object p0, p0, Lcom/incall/serversdk/power/PowerProxy$PowerListener;->this$0:Lcom/incall/serversdk/power/PowerProxy;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, p1}, Lcom/incall/serversdk/power/PowerProxy;->access$000(Lcom/incall/serversdk/power/PowerProxy;I)V

    :goto_0
    return-void
.end method
