.class public final Lcom/koushikdutta/async/AsyncServer$2$1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic val$key:Ljava/nio/channels/SelectionKey;

.field public final synthetic val$wrapper:Lcom/koushikdutta/async/ServerSocketChannelWrapper;


# direct methods
.method public constructor <init>(Lcom/koushikdutta/async/ServerSocketChannelWrapper;Ljava/nio/channels/SelectionKey;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/koushikdutta/async/AsyncServer$2$1;->val$wrapper:Lcom/koushikdutta/async/ServerSocketChannelWrapper;

    iput-object p2, p0, Lcom/koushikdutta/async/AsyncServer$2$1;->val$key:Ljava/nio/channels/SelectionKey;

    return-void
.end method
