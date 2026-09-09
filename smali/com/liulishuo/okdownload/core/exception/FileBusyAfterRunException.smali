.class public Lcom/liulishuo/okdownload/core/exception/FileBusyAfterRunException;
.super Ljava/io/IOException;
.source "SourceFile"


# static fields
.field public static final SIGNAL:Lcom/liulishuo/okdownload/core/exception/FileBusyAfterRunException$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/liulishuo/okdownload/core/exception/FileBusyAfterRunException$1;

    invoke-direct {v0}, Lcom/liulishuo/okdownload/core/exception/FileBusyAfterRunException$1;-><init>()V

    sput-object v0, Lcom/liulishuo/okdownload/core/exception/FileBusyAfterRunException;->SIGNAL:Lcom/liulishuo/okdownload/core/exception/FileBusyAfterRunException$1;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const-string v0, "File busy after run"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/liulishuo/okdownload/core/exception/FileBusyAfterRunException;-><init>()V

    return-void
.end method
