.class public abstract Lcom/koushikdutta/async/ChannelWrapper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/nio/channels/ReadableByteChannel;
.implements Ljava/nio/channels/ScatteringByteChannel;


# instance fields
.field public final mChannel:Ljava/nio/channels/spi/AbstractSelectableChannel;


# direct methods
.method public constructor <init>(Ljava/nio/channels/spi/AbstractSelectableChannel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/nio/channels/spi/AbstractSelectableChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    iput-object p1, p0, Lcom/koushikdutta/async/ChannelWrapper;->mChannel:Ljava/nio/channels/spi/AbstractSelectableChannel;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 0

    iget-object p0, p0, Lcom/koushikdutta/async/ChannelWrapper;->mChannel:Ljava/nio/channels/spi/AbstractSelectableChannel;

    invoke-virtual {p0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V

    return-void
.end method

.method public final isOpen()Z
    .locals 0

    iget-object p0, p0, Lcom/koushikdutta/async/ChannelWrapper;->mChannel:Ljava/nio/channels/spi/AbstractSelectableChannel;

    invoke-virtual {p0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->isOpen()Z

    move-result p0

    return p0
.end method
