.class public final Lcom/liulishuo/okdownload/core/dispatcher/CallbackDispatcher$DefaultTransmitListener$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic val$headerFields:Ljava/util/Map;

.field public final synthetic val$responseCode:I

.field public final synthetic val$task:Lcom/liulishuo/okdownload/DownloadTask;


# direct methods
.method public synthetic constructor <init>(IILcom/liulishuo/okdownload/DownloadTask;Ljava/util/Map;)V
    .locals 0

    iput p2, p0, Lcom/liulishuo/okdownload/core/dispatcher/CallbackDispatcher$DefaultTransmitListener$3;->$r8$classId:I

    iput-object p3, p0, Lcom/liulishuo/okdownload/core/dispatcher/CallbackDispatcher$DefaultTransmitListener$3;->val$task:Lcom/liulishuo/okdownload/DownloadTask;

    iput p1, p0, Lcom/liulishuo/okdownload/core/dispatcher/CallbackDispatcher$DefaultTransmitListener$3;->val$responseCode:I

    iput-object p4, p0, Lcom/liulishuo/okdownload/core/dispatcher/CallbackDispatcher$DefaultTransmitListener$3;->val$headerFields:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lcom/liulishuo/okdownload/core/dispatcher/CallbackDispatcher$DefaultTransmitListener$3;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/liulishuo/okdownload/core/dispatcher/CallbackDispatcher$DefaultTransmitListener$3;->val$task:Lcom/liulishuo/okdownload/DownloadTask;

    iget-object v1, v0, Lcom/liulishuo/okdownload/DownloadTask;->listener:Lcom/liulishuo/okdownload/DownloadListener;

    iget v2, p0, Lcom/liulishuo/okdownload/core/dispatcher/CallbackDispatcher$DefaultTransmitListener$3;->val$responseCode:I

    iget-object p0, p0, Lcom/liulishuo/okdownload/core/dispatcher/CallbackDispatcher$DefaultTransmitListener$3;->val$headerFields:Ljava/util/Map;

    invoke-interface {v1, v0, v2, p0}, Lcom/liulishuo/okdownload/DownloadListener;->connectStart(Lcom/liulishuo/okdownload/DownloadTask;ILjava/util/Map;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/liulishuo/okdownload/core/dispatcher/CallbackDispatcher$DefaultTransmitListener$3;->val$task:Lcom/liulishuo/okdownload/DownloadTask;

    iget-object v1, v0, Lcom/liulishuo/okdownload/DownloadTask;->listener:Lcom/liulishuo/okdownload/DownloadListener;

    iget v2, p0, Lcom/liulishuo/okdownload/core/dispatcher/CallbackDispatcher$DefaultTransmitListener$3;->val$responseCode:I

    iget-object p0, p0, Lcom/liulishuo/okdownload/core/dispatcher/CallbackDispatcher$DefaultTransmitListener$3;->val$headerFields:Ljava/util/Map;

    invoke-interface {v1, v0, v2, p0}, Lcom/liulishuo/okdownload/DownloadListener;->connectTrialEnd(Lcom/liulishuo/okdownload/DownloadTask;ILjava/util/Map;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
