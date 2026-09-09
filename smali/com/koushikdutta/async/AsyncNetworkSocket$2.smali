.class public final Lcom/koushikdutta/async/AsyncNetworkSocket$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/koushikdutta/async/AsyncNetworkSocket;


# direct methods
.method public synthetic constructor <init>(Lcom/koushikdutta/async/AsyncNetworkSocket;I)V
    .locals 0

    iput p2, p0, Lcom/koushikdutta/async/AsyncNetworkSocket$2;->$r8$classId:I

    iput-object p1, p0, Lcom/koushikdutta/async/AsyncNetworkSocket$2;->this$0:Lcom/koushikdutta/async/AsyncNetworkSocket;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket$2;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket$2;->this$0:Lcom/koushikdutta/async/AsyncNetworkSocket;

    invoke-virtual {p0}, Lcom/koushikdutta/async/AsyncNetworkSocket;->resume()V

    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket$2;->this$0:Lcom/koushikdutta/async/AsyncNetworkSocket;

    invoke-virtual {p0}, Lcom/koushikdutta/async/AsyncNetworkSocket;->pause()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
