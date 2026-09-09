.class public final Lcom/liulishuo/okdownload/core/exception/ResumeFailedException;
.super Ljava/io/IOException;
.source "SourceFile"


# instance fields
.field private final resumeFailedCause:Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;


# direct methods
.method public constructor <init>(Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Resume failed because of "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/liulishuo/okdownload/core/exception/ResumeFailedException;->resumeFailedCause:Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;

    return-void
.end method
