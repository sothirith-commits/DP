.class Lcom/incall/serversdk/power/PowerProxy$ScreenStateListener$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/incall/serversdk/power/PowerProxy$ScreenStateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final this$1:Lcom/incall/serversdk/power/PowerProxy$ScreenStateListener;


# direct methods
.method public constructor <init>(Lcom/incall/serversdk/power/PowerProxy$ScreenStateListener;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/incall/serversdk/power/PowerProxy$ScreenStateListener$1;->this$1:Lcom/incall/serversdk/power/PowerProxy$ScreenStateListener;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/incall/serversdk/power/PowerProxy$ScreenStateListener$1;->this$1:Lcom/incall/serversdk/power/PowerProxy$ScreenStateListener;

    iget-object p0, p0, Lcom/incall/serversdk/power/PowerProxy$ScreenStateListener;->this$0:Lcom/incall/serversdk/power/PowerProxy;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, p1}, Lcom/incall/serversdk/power/PowerProxy;->access$500(Lcom/incall/serversdk/power/PowerProxy;I)V

    :goto_0
    return-void
.end method
