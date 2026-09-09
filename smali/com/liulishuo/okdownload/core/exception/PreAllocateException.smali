.class public final Lcom/liulishuo/okdownload/core/exception/PreAllocateException;
.super Ljava/io/IOException;
.source "SourceFile"


# instance fields
.field private final freeSpace:J

.field private final requireSpace:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "There is Free space less than Require space: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " < "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    iput-wide p1, p0, Lcom/liulishuo/okdownload/core/exception/PreAllocateException;->requireSpace:J

    iput-wide p3, p0, Lcom/liulishuo/okdownload/core/exception/PreAllocateException;->freeSpace:J

    return-void
.end method
