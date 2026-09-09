.class public Lcom/uc/crashsdk/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uc/crashsdk/e$c;,
        Lcom/uc/crashsdk/e$d;,
        Lcom/uc/crashsdk/e$b;,
        Lcom/uc/crashsdk/e$a;
    }
.end annotation


# static fields
.field private static A:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static B:Ljava/lang/String; = null

.field private static C:I = 0x0

.field private static D:I = 0x0

.field private static E:I = 0x0

.field private static F:I = 0x0

.field private static G:I = 0x0

.field private static H:I = 0x0

.field private static I:I = 0x0

.field private static J:Ljava/lang/String; = null

.field private static K:Z = false

.field private static L:Z = false

.field private static M:I = 0x0

.field private static N:I = 0x0

.field private static O:Z = false

.field private static P:Lcom/uc/crashsdk/a/e; = null

.field private static Q:Lcom/uc/crashsdk/e$c; = null

.field private static R:Z = false

.field private static final S:Lcom/uc/crashsdk/a/e;

.field private static T:Ljava/lang/Thread$UncaughtExceptionHandler; = null

.field private static U:Ljava/lang/Throwable; = null

.field private static V:Z = false

.field private static W:Z = false

.field private static X:Ljava/lang/Runnable; = null

.field private static final Y:Ljava/lang/Object;

.field private static Z:I = 0x0

.field static final synthetic a:Z = true

.field private static aa:Ljava/lang/Runnable;

.field private static final ab:Ljava/lang/Object;

.field private static volatile ac:Z

.field private static ad:Ljava/lang/Object;

.field private static ae:Landroid/os/ParcelFileDescriptor;

.field private static af:Z

.field private static ag:Z

.field private static b:J

.field private static final c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static d:Z

.field private static f:J

.field private static g:J

.field private static h:Z

.field private static i:Ljava/lang/String;

.field private static j:Ljava/lang/String;

.field private static k:Ljava/lang/String;

.field private static l:Ljava/lang/String;

.field private static m:Ljava/lang/String;

.field private static final n:Ljava/lang/Object;

.field private static final o:Landroid/os/ConditionVariable;

.field private static final p:Ljava/lang/Object;

.field private static final q:Ljava/lang/Object;

.field private static final r:Ljava/lang/Object;

.field private static final s:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static t:I

.field private static u:Ljava/lang/String;

.field private static v:Z

.field private static w:Ljava/lang/String;

.field private static x:Ljava/lang/String;

.field private static final y:Ljava/lang/Object;

.field private static final z:Ljava/lang/Object;


# instance fields
.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/io/FileInputStream;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/uc/crashsdk/e;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    sput-boolean v1, Lcom/uc/crashsdk/e;->d:Z

    const-wide/16 v2, 0x0

    sput-wide v2, Lcom/uc/crashsdk/e;->f:J

    const-wide/16 v2, -0x1

    sput-wide v2, Lcom/uc/crashsdk/e;->g:J

    const/4 v0, 0x1

    sput-boolean v0, Lcom/uc/crashsdk/e;->h:Z

    const-string v0, ""

    sput-object v0, Lcom/uc/crashsdk/e;->j:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/uc/crashsdk/e;->k:Ljava/lang/String;

    sput-object v0, Lcom/uc/crashsdk/e;->l:Ljava/lang/String;

    sput-object v0, Lcom/uc/crashsdk/e;->m:Ljava/lang/String;

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    sput-object v2, Lcom/uc/crashsdk/e;->n:Ljava/lang/Object;

    new-instance v2, Landroid/os/ConditionVariable;

    invoke-direct {v2}, Landroid/os/ConditionVariable;-><init>()V

    sput-object v2, Lcom/uc/crashsdk/e;->o:Landroid/os/ConditionVariable;

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    sput-object v2, Lcom/uc/crashsdk/e;->p:Ljava/lang/Object;

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    sput-object v2, Lcom/uc/crashsdk/e;->q:Ljava/lang/Object;

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    sput-object v2, Lcom/uc/crashsdk/e;->r:Ljava/lang/Object;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Lcom/uc/crashsdk/e;->s:Ljava/util/ArrayList;

    sput v1, Lcom/uc/crashsdk/e;->t:I

    sput-object v0, Lcom/uc/crashsdk/e;->u:Ljava/lang/String;

    sput-boolean v1, Lcom/uc/crashsdk/e;->v:Z

    sput-object v0, Lcom/uc/crashsdk/e;->w:Ljava/lang/String;

    sput-object v0, Lcom/uc/crashsdk/e;->x:Ljava/lang/String;

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    sput-object v2, Lcom/uc/crashsdk/e;->y:Ljava/lang/Object;

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    sput-object v2, Lcom/uc/crashsdk/e;->z:Ljava/lang/Object;

    sput-object v0, Lcom/uc/crashsdk/e;->A:Ljava/util/Map;

    sput-object v0, Lcom/uc/crashsdk/e;->B:Ljava/lang/String;

    const/4 v2, -0x1

    sput v2, Lcom/uc/crashsdk/e;->C:I

    sput v2, Lcom/uc/crashsdk/e;->D:I

    sput v2, Lcom/uc/crashsdk/e;->E:I

    sput v2, Lcom/uc/crashsdk/e;->F:I

    sput v2, Lcom/uc/crashsdk/e;->G:I

    sput v2, Lcom/uc/crashsdk/e;->H:I

    sput v2, Lcom/uc/crashsdk/e;->I:I

    const-string v2, "?"

    sput-object v2, Lcom/uc/crashsdk/e;->J:Ljava/lang/String;

    sput-boolean v1, Lcom/uc/crashsdk/e;->K:Z

    sput-boolean v1, Lcom/uc/crashsdk/e;->L:Z

    sput v1, Lcom/uc/crashsdk/e;->M:I

    sput v1, Lcom/uc/crashsdk/e;->N:I

    sput-boolean v1, Lcom/uc/crashsdk/e;->O:Z

    new-instance v2, Lcom/uc/crashsdk/a/e;

    const/16 v3, 0x195

    invoke-direct {v2, v3}, Lcom/uc/crashsdk/a/e;-><init>(I)V

    sput-object v2, Lcom/uc/crashsdk/e;->P:Lcom/uc/crashsdk/a/e;

    new-instance v2, Lcom/uc/crashsdk/e$c;

    invoke-direct {v2, v1}, Lcom/uc/crashsdk/e$c;-><init>(B)V

    sput-object v2, Lcom/uc/crashsdk/e;->Q:Lcom/uc/crashsdk/e$c;

    sput-boolean v1, Lcom/uc/crashsdk/e;->R:Z

    new-instance v2, Lcom/uc/crashsdk/a/e;

    const/16 v3, 0x19c

    invoke-direct {v2, v3}, Lcom/uc/crashsdk/a/e;-><init>(I)V

    sput-object v2, Lcom/uc/crashsdk/e;->S:Lcom/uc/crashsdk/a/e;

    sput-object v0, Lcom/uc/crashsdk/e;->T:Ljava/lang/Thread$UncaughtExceptionHandler;

    sput-object v0, Lcom/uc/crashsdk/e;->U:Ljava/lang/Throwable;

    sput-boolean v1, Lcom/uc/crashsdk/e;->V:Z

    sput-boolean v1, Lcom/uc/crashsdk/e;->W:Z

    sput-object v0, Lcom/uc/crashsdk/e;->X:Ljava/lang/Runnable;

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    sput-object v2, Lcom/uc/crashsdk/e;->Y:Ljava/lang/Object;

    const/16 v2, 0x65

    sput v2, Lcom/uc/crashsdk/e;->Z:I

    new-instance v2, Lcom/uc/crashsdk/a/e;

    const/16 v3, 0x197

    invoke-direct {v2, v3}, Lcom/uc/crashsdk/a/e;-><init>(I)V

    sput-object v2, Lcom/uc/crashsdk/e;->aa:Ljava/lang/Runnable;

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    sput-object v2, Lcom/uc/crashsdk/e;->ab:Ljava/lang/Object;

    sput-boolean v1, Lcom/uc/crashsdk/e;->ac:Z

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    sput-object v2, Lcom/uc/crashsdk/e;->ad:Ljava/lang/Object;

    sput-object v0, Lcom/uc/crashsdk/e;->ae:Landroid/os/ParcelFileDescriptor;

    sput-boolean v1, Lcom/uc/crashsdk/e;->af:Z

    sput-boolean v1, Lcom/uc/crashsdk/e;->ag:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/uc/crashsdk/e;->e:Ljava/util/List;

    :try_start_0
    invoke-direct {p0}, Lcom/uc/crashsdk/e;->M()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static A()V
    .locals 4

    invoke-static {}, Lcom/uc/crashsdk/g;->q()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/uc/crashsdk/a/e;

    const/16 v1, 0x193

    invoke-direct {v0, v1}, Lcom/uc/crashsdk/a/e;-><init>(I)V

    const-wide/16 v1, 0x2710

    const/4 v3, 0x0

    invoke-static {v3, v0, v1, v2}, Lcom/uc/crashsdk/a/f;->a(ILjava/lang/Runnable;J)Z

    return-void
.end method

.method public static B()V
    .locals 4

    sget-boolean v0, Lcom/uc/crashsdk/e;->ac:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/uc/crashsdk/b;->L()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Lcom/uc/crashsdk/a/e;

    const/16 v1, 0x198

    invoke-direct {v0, v1}, Lcom/uc/crashsdk/a/e;-><init>(I)V

    const-wide/16 v1, 0x3e8

    const/4 v3, 0x1

    invoke-static {v3, v0, v1, v2}, Lcom/uc/crashsdk/a/f;->a(ILjava/lang/Runnable;J)Z

    return-void
.end method

.method public static C()V
    .locals 4

    new-instance v0, Lcom/uc/crashsdk/a/e;

    const/16 v1, 0x199

    invoke-direct {v0, v1}, Lcom/uc/crashsdk/a/e;-><init>(I)V

    const-wide/16 v1, 0x1b58

    const/4 v3, 0x1

    invoke-static {v3, v0, v1, v2}, Lcom/uc/crashsdk/a/f;->a(ILjava/lang/Runnable;J)Z

    return-void
.end method

.method public static D()V
    .locals 5

    invoke-static {}, Lcom/uc/crashsdk/g;->N()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    const/4 v3, 0x3

    if-eq v0, v3, :cond_1

    const/4 v3, 0x4

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    if-ne v0, v2, :cond_1

    move v2, v1

    :cond_1
    :goto_0
    if-nez v2, :cond_2

    const-string v0, "crashsdk"

    const-string v3, "SIG 3 is disabled by settings"

    invoke-static {v0, v3}, Lcom/uc/crashsdk/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-static {}, Lcom/uc/crashsdk/b;->L()Z

    move-result v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v4

    if-eq v3, v4, :cond_3

    if-eqz v2, :cond_3

    new-instance v2, Lcom/uc/crashsdk/a/e;

    const/16 v3, 0x19d

    invoke-direct {v2, v3}, Lcom/uc/crashsdk/a/e;-><init>(I)V

    const/4 v3, 0x2

    invoke-static {v3, v2}, Lcom/uc/crashsdk/a/f;->a(ILjava/lang/Runnable;)Z

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_1
    const/4 v2, 0x7

    int-to-long v3, v0

    const/4 v0, 0x0

    invoke-static {v2, v3, v4, v0, v0}, Lcom/uc/crashsdk/JNIBridge;->nativeCmd(IJLjava/lang/String;[Ljava/lang/Object;)J

    if-eqz v1, :cond_4

    const/16 v0, 0x8

    invoke-static {v0}, Lcom/uc/crashsdk/JNIBridge;->cmd(I)J

    :cond_4
    return-void
.end method

.method public static E()Landroid/os/ParcelFileDescriptor;
    .locals 4

    sget-boolean v0, Lcom/uc/crashsdk/b;->d:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "crashsdk"

    const-string v2, "Crash so is not loaded!"

    invoke-static {v0, v2}, Lcom/uc/crashsdk/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_0
    sget-object v0, Lcom/uc/crashsdk/e;->ad:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v2, Lcom/uc/crashsdk/e;->ae:Landroid/os/ParcelFileDescriptor;

    if-eqz v2, :cond_1

    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    goto :goto_0

    :cond_1
    const/16 v2, 0xe

    invoke-static {v2}, Lcom/uc/crashsdk/JNIBridge;->cmd(I)J

    move-result-wide v2

    long-to-int v2, v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    monitor-exit v0

    return-object v1

    :cond_2
    invoke-static {v2}, Landroid/os/ParcelFileDescriptor;->adoptFd(I)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    sput-object v1, Lcom/uc/crashsdk/e;->ae:Landroid/os/ParcelFileDescriptor;

    const/4 v2, 0x1

    sput-boolean v2, Lcom/uc/crashsdk/e;->af:Z

    monitor-exit v0

    return-object v1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static F()Z
    .locals 1

    sget-boolean v0, Lcom/uc/crashsdk/e;->ag:Z

    return v0
.end method

.method public static G()V
    .locals 6

    invoke-static {}, Lcom/uc/crashsdk/g;->X()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Ucebu can not list folder: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/uc/crashsdk/a/a;->b(Ljava/lang/String;)V

    return-void

    :cond_1
    array-length v0, v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_3

    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ucebu"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {v2, v2}, Lcom/uc/crashsdk/e;->a(ZZ)Z

    return-void

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public static synthetic H()Z
    .locals 1

    sget-boolean v0, Lcom/uc/crashsdk/e;->h:Z

    return v0
.end method

.method public static synthetic I()Z
    .locals 1

    invoke-static {}, Lcom/uc/crashsdk/e;->O()Z

    move-result v0

    return v0
.end method

.method public static synthetic J()I
    .locals 1

    sget v0, Lcom/uc/crashsdk/e;->M:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/uc/crashsdk/e;->M:I

    return v0
.end method

.method public static synthetic K()V
    .locals 2

    sget-boolean v0, Lcom/uc/crashsdk/b;->d:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/uc/crashsdk/e;->Y()Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x7d

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/uc/crashsdk/JNIBridge;->set(ILjava/lang/String;)J

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/uc/crashsdk/e;->L:Z

    invoke-static {}, Lcom/uc/crashsdk/e;->Z()V

    return-void
.end method

.method public static synthetic L()I
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/uc/crashsdk/e;->M:I

    return v0
.end method

.method private M()V
    .locals 4

    invoke-static {}, Lcom/uc/crashsdk/g;->I()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    const-string v3, "/dev/null"

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/uc/crashsdk/e;->e:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method private N()V
    .locals 2

    iget-object v0, p0, Lcom/uc/crashsdk/e;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/FileInputStream;

    invoke-static {v1}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/uc/crashsdk/e;->e:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method private static O()Z
    .locals 1

    invoke-static {}, Lcom/uc/crashsdk/g;->P()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-static {}, Lcom/uc/crashsdk/e;->a()Z

    move-result v0

    return v0
.end method

.method private static P()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/uc/crashsdk/g;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static Q()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/uc/crashsdk/b;->B()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "fg"

    return-object v0

    :cond_0
    const-string v0, "bg"

    return-object v0
.end method

.method private static R()[B
    .locals 3

    const/4 v0, 0x0

    const/16 v1, 0x400

    :cond_0
    :goto_0
    if-nez v0, :cond_1

    if-lez v1, :cond_1

    :try_start_0
    new-array v0, v1, [B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    div-int/lit8 v1, v1, 0x2

    const/16 v2, 0x10

    if-ge v1, v2, :cond_0

    :cond_1
    return-object v0
.end method

.method private static S()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/uc/crashsdk/b;->F()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/uc/crashsdk/e;->d:Z

    if-nez v0, :cond_0

    const-string v0, "ucebujava"

    return-object v0

    :cond_0
    const-string v0, "java"

    return-object v0
.end method

.method private static T()V
    .locals 9

    const-string v0, "-"

    :try_start_0
    sget-object v1, Landroid/os/Build;->HARDWARE:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-static {v1}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    move-object v1, v0

    :goto_0
    const/4 v2, 0x0

    :try_start_1
    new-instance v3, Ljava/io/FileReader;

    new-instance v4, Ljava/io/File;

    const-string v5, "/proc/cpuinfo"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :try_start_2
    new-instance v4, Ljava/io/BufferedReader;

    const/16 v5, 0x200

    invoke-direct {v4, v3, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const/4 v2, 0x0

    :cond_0
    :try_start_3
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    const-string v6, "Hardware"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const-string v7, ":"

    if-eqz v6, :cond_1

    :try_start_4
    invoke-virtual {v5, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :catchall_1
    move-exception v2

    goto :goto_4

    :cond_1
    const-string v6, "Processor"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v5, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    :cond_2
    :goto_2
    const/4 v5, 0x2

    if-lt v2, v5, :cond_0

    :cond_3
    invoke-static {v3}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    :goto_3
    invoke-static {v4}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    goto :goto_5

    :catchall_2
    move-exception v4

    move-object v8, v4

    move-object v4, v2

    move-object v2, v8

    goto :goto_4

    :catchall_3
    move-exception v3

    move-object v4, v2

    move-object v2, v3

    move-object v3, v4

    :goto_4
    :try_start_5
    invoke-static {v2}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    invoke-static {v3}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    goto :goto_3

    :goto_5
    sput-object v1, Lcom/uc/crashsdk/e;->k:Ljava/lang/String;

    sput-object v0, Lcom/uc/crashsdk/e;->l:Ljava/lang/String;

    return-void

    :catchall_4
    move-exception v0

    invoke-static {v3}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    invoke-static {v4}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    throw v0
.end method

.method private static U()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/uc/crashsdk/g;->W()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "bytes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static V()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static W()V
    .locals 1

    sget-boolean v0, Lcom/uc/crashsdk/e;->O:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/uc/crashsdk/b;->F()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/uc/crashsdk/b;->L()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x12

    invoke-static {v0}, Lcom/uc/crashsdk/JNIBridge;->cmd(I)J

    :cond_0
    return-void
.end method

.method private static X()V
    .locals 4

    new-instance v0, Lcom/uc/crashsdk/a/e;

    const/16 v1, 0x19e

    invoke-direct {v0, v1}, Lcom/uc/crashsdk/a/e;-><init>(I)V

    const-wide/16 v1, 0x3e8

    const/4 v3, 0x3

    invoke-static {v3, v0, v1, v2}, Lcom/uc/crashsdk/a/f;->a(ILjava/lang/Runnable;J)Z

    return-void
.end method

.method private static Y()Ljava/lang/StringBuilder;
    .locals 13

    const-string v0, "\nbattery low: "

    const-string v1, "\ntechnology: "

    const-string v2, "\ntemperature: "

    const-string v3, "\nvoltage: "

    const-string v4, "\nstatus: "

    const-string v5, "\npluged: "

    const-string v6, "\nhealth: "

    const-string v7, "\nscale: "

    :try_start_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "level: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v9, Lcom/uc/crashsdk/e;->C:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v7, Lcom/uc/crashsdk/e;->D:I

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v6, Lcom/uc/crashsdk/e;->F:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v7, " (Unknown)"

    const-string v9, " (?)"

    packed-switch v6, :pswitch_data_0

    move-object v10, v9

    goto :goto_0

    :pswitch_0
    :try_start_1
    const-string v10, " (Cold)"

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_3

    :pswitch_1
    const-string v10, " (Unspecified failure)"

    goto :goto_0

    :pswitch_2
    const-string v10, " (Over voltage)"

    goto :goto_0

    :pswitch_3
    const-string v10, " (Dead)"

    goto :goto_0

    :pswitch_4
    const-string v10, " (Overheat)"

    goto :goto_0

    :pswitch_5
    const-string v10, " (Good)"

    goto :goto_0

    :pswitch_6
    move-object v10, v7

    :goto_0
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v5, Lcom/uc/crashsdk/e;->G:I

    const/4 v6, 0x4

    const/4 v10, 0x2

    const/4 v11, 0x1

    if-eqz v5, :cond_3

    if-eq v5, v11, :cond_2

    if-eq v5, v10, :cond_1

    if-eq v5, v6, :cond_0

    move-object v12, v9

    goto :goto_1

    :cond_0
    const-string v12, " (Wireless)"

    goto :goto_1

    :cond_1
    const-string v12, " (USB port)"

    goto :goto_1

    :cond_2
    const-string v12, " (AC charger)"

    goto :goto_1

    :cond_3
    const-string v12, " (None)"

    :goto_1
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/uc/crashsdk/e;->H:I

    if-eq v4, v11, :cond_8

    if-eq v4, v10, :cond_7

    const/4 v5, 0x3

    if-eq v4, v5, :cond_6

    if-eq v4, v6, :cond_5

    const/4 v5, 0x5

    if-eq v4, v5, :cond_4

    move-object v7, v9

    goto :goto_2

    :cond_4
    const-string v7, " (Full)"

    goto :goto_2

    :cond_5
    const-string v7, " (Not charging)"

    goto :goto_2

    :cond_6
    const-string v7, " (Discharging)"

    goto :goto_2

    :cond_7
    const-string v7, " (Charging)"

    :cond_8
    :goto_2
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/uc/crashsdk/e;->E:I

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/uc/crashsdk/e;->I:I

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/uc/crashsdk/e;->J:Ljava/lang/String;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/uc/crashsdk/e;->K:Z

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v8

    :goto_3
    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static Z()V
    .locals 4

    sget-boolean v0, Lcom/uc/crashsdk/b;->c:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/uc/crashsdk/e;->L:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/uc/crashsdk/a;->c:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    sput-boolean v0, Lcom/uc/crashsdk/e;->L:Z

    sget-object v1, Lcom/uc/crashsdk/e;->P:Lcom/uc/crashsdk/a/e;

    invoke-static {v1}, Lcom/uc/crashsdk/a/f;->b(Ljava/lang/Runnable;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/uc/crashsdk/e;->P:Lcom/uc/crashsdk/a/e;

    const-wide/16 v2, 0x7d0

    invoke-static {v0, v1, v2, v3}, Lcom/uc/crashsdk/a/f;->a(ILjava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public static a(Ljava/io/OutputStream;Ljava/lang/String;I)I
    .locals 4

    const-string v0, "(truncated "

    const/4 v1, 0x0

    if-nez p1, :cond_0

    invoke-static {p0}, Lcom/uc/crashsdk/e;->a(Ljava/io/OutputStream;)V

    return v1

    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/uc/crashsdk/a/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "file: \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' not found or decode failed!"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_1
    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v3, p2, 0x20

    if-le p1, v3, :cond_2

    goto :goto_1

    :cond_2
    move p2, p1

    :goto_1
    const-string p1, "UTF-8"

    if-lez p2, :cond_3

    :try_start_1
    invoke-virtual {v2, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {p0, v3, v1, p2}, Ljava/io/OutputStream;->write([BII)V

    const-string v1, "\n"

    invoke-virtual {v1, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write([B)V

    goto :goto_2

    :catchall_1
    move-exception p1

    move v1, p2

    goto :goto_3

    :cond_3
    :goto_2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    if-ge p2, v1, :cond_4

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, p2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " bytes)\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_4

    :goto_3
    invoke-static {p1, p0}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    move p2, v1

    :cond_4
    :goto_4
    invoke-static {p0}, Lcom/uc/crashsdk/e;->a(Ljava/io/OutputStream;)V

    return p2
.end method

.method private static a(Landroid/os/StatFs;Ljava/lang/String;Ljava/lang/String;)J
    .locals 4

    const-class v0, Landroid/os/StatFs;

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v0, p1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {p1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    instance-of v3, p1, Ljava/lang/Long;

    if-eqz v3, :cond_0

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide p0

    :catchall_0
    :cond_0
    :try_start_1
    invoke-virtual {v0, p2, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {p1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_1

    instance-of p1, p0, Ljava/lang/Integer;

    if-eqz p1, :cond_1

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    int-to-long p0, p0

    return-wide p0

    :catchall_1
    move-exception p0

    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    :cond_1
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method private static a(Ljava/io/InputStreamReader;)Ljava/io/BufferedReader;
    .locals 3

    const/4 v0, 0x0

    const/16 v1, 0x2000

    :cond_0
    :goto_0
    if-nez v0, :cond_1

    if-lez v1, :cond_1

    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, p0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v2

    goto :goto_0

    :catchall_0
    div-int/lit8 v1, v1, 0x2

    const/16 v2, 0x200

    if-ge v1, v2, :cond_0

    :cond_1
    return-object v0
.end method

.method public static a(I)Ljava/lang/String;
    .locals 3

    const-string v0, "/proc/"

    :try_start_0
    new-instance v1, Ljava/io/File;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "/cmdline"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 p0, 0x80

    const/4 v0, 0x0

    invoke-static {v1, p0, v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/File;IZ)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/uc/crashsdk/e;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    :cond_0
    const-string p0, "unknown"

    return-object p0
.end method

.method private static a(Ljava/io/File;)Ljava/lang/String;
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    invoke-static {}, Lcom/uc/crashsdk/g;->x()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-gtz v0, :cond_1

    return-object p0

    :cond_1
    const/16 v1, 0x5f

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    if-gt v2, v0, :cond_2

    return-object p0

    :cond_2
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    if-gt v1, v2, :cond_3

    return-object p0

    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "CrashSDK"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    return-object p0

    :cond_4
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/uc/crashsdk/a/g;->e(Ljava/io/File;)[B

    move-result-object v2

    if-eqz v2, :cond_9

    array-length v3, v2

    if-gtz v3, :cond_5

    goto :goto_1

    :cond_5
    const/4 v3, 0x0

    const/16 v4, 0x10

    :try_start_0
    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v2, v0}, Lcom/uc/crashsdk/a/c;->b([B[B)[B

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_6

    return-object p0

    :cond_6
    const-string v2, ".ec"

    invoke-virtual {p0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    const-string v4, ".tmp"

    invoke-static {v2, v4}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/File;[B)Z

    move-result v0

    if-nez v0, :cond_7

    return-object p0

    :cond_7
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    return-object p0

    :cond_8
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    return-object v2

    :cond_9
    :goto_1
    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    :try_start_0
    const-string v0, "ps"

    const-string v1, "-ef"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->b(Ljava/lang/String;)Z

    move-result v0

    invoke-static {p1}, Lcom/uc/crashsdk/a/g;->b(Ljava/lang/String;)Z

    move-result v2

    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v5, "UTF-8"

    if-eqz v4, :cond_4

    if-eqz v0, :cond_1

    :try_start_1
    invoke-virtual {v4, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_1
    :goto_1
    if-eqz v2, :cond_2

    invoke-virtual {v4, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_2

    :cond_2
    const/16 v6, 0x2f

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-gez v6, :cond_0

    const/16 v6, 0x2e

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-gtz v6, :cond_3

    goto :goto_0

    :cond_3
    :goto_2
    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write([B)V

    const-string v4, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0

    :cond_4
    invoke-virtual {v3, v5}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object p0

    :goto_3
    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    const-string p0, "exception exists."

    return-object p0
.end method

.method private static a(Ljava/lang/Throwable;Ljava/lang/String;JZ)Ljava/lang/String;
    .locals 33

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-wide/from16 v3, p2

    const-string v5, "\'\n"

    const-string v6, " kB\n"

    const-string v7, "--- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---\n"

    const-string v8, "\n"

    const-string v9, "UTF-8"

    const-string v10, "su permission: "

    const-string v11, "su binary: "

    const-string v12, "build tags: "

    const-string v13, "has root: "

    const-string v14, "  block size: "

    const-string v15, "  free:       "

    move-object/from16 v16, v10

    const-string v10, "  available:  "

    move-object/from16 v17, v11

    const-string v11, "  total:      "

    move-object/from16 v18, v12

    const-string v12, ":\n"

    move-object/from16 v19, v13

    const-string v13, "memory info:\n"

    move-object/from16 v20, v14

    const-string v14, "/proc/"

    const-wide/16 v21, 0x0

    move-object/from16 v23, v15

    :try_start_0
    invoke-static {}, Lcom/uc/crashsdk/b;->L()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_25

    const/4 v15, 0x1

    if-nez v0, :cond_0

    :try_start_1
    invoke-static {}, Lcom/uc/crashsdk/g;->a()V

    invoke-static {v15}, Lcom/uc/crashsdk/e;->a(Z)V

    goto :goto_0

    :catchall_0
    move-exception v0

    const/4 v15, 0x0

    const/16 v24, 0x0

    goto/16 :goto_2c

    :cond_0
    :goto_0
    cmp-long v25, v3, v21

    if-nez v25, :cond_1

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v15, v0

    move-object/from16 v26, v10

    goto :goto_1

    :cond_1
    move-object/from16 v26, v10

    const/4 v15, 0x0

    :goto_1
    :try_start_2
    new-instance v10, Lcom/uc/crashsdk/e$a;

    invoke-direct {v10, v3, v4, v15}, Lcom/uc/crashsdk/e$a;-><init>(JLjava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_24

    :try_start_3
    sget-boolean v0, Lcom/uc/crashsdk/b;->d:Z

    if-eqz v0, :cond_2

    const/16 v0, 0x7e

    invoke-static {v0, v2}, Lcom/uc/crashsdk/JNIBridge;->set(ILjava/lang/String;)J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    invoke-static {}, Lcom/uc/crashsdk/e;->S()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v2, v0}, Lcom/uc/crashsdk/e;->b(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-eqz p4, :cond_3

    :try_start_5
    invoke-virtual {v10}, Ljava/io/OutputStream;->flush()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object/from16 v27, v0

    :try_start_6
    invoke-static/range {v27 .. v27}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception v0

    move-object/from16 v24, v15

    move-object v15, v10

    goto/16 :goto_2c

    :cond_3
    :goto_3
    :try_start_7
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Process Name: \'"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/uc/crashsdk/e;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/uc/crashsdk/e$a;->write([B)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Thread Name: \'"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/uc/crashsdk/e$a;->write([B)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    goto :goto_4

    :catchall_4
    move-exception v0

    :try_start_8
    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :goto_4
    :try_start_9
    const-string v0, "Back traces starts.\n"

    invoke-virtual {v0, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/uc/crashsdk/e$a;->write([B)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    :try_start_a
    const-class v0, Ljava/lang/Throwable;

    const-string v2, "detailMessage"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4

    check-cast v2, Ljava/lang/String;

    const-string v5, "\n\t"

    const-string v3, "\n->  "

    invoke-virtual {v2, v5, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    goto :goto_5

    :catchall_5
    move-exception v0

    :try_start_b
    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    :cond_4
    :goto_5
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Message: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/uc/crashsdk/e$a;->write([B)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    goto :goto_6

    :catchall_6
    move-exception v0

    :try_start_c
    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    :cond_5
    :goto_6
    :try_start_d
    new-instance v0, Ljava/io/PrintStream;

    invoke-direct {v0, v10}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    goto :goto_7

    :catchall_7
    move-exception v0

    :try_start_e
    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    :goto_7
    :try_start_f
    const-string v0, "Back traces ends.\n"

    invoke-virtual {v0, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/uc/crashsdk/e$a;->write([B)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_8

    goto :goto_8

    :catchall_8
    move-exception v0

    :try_start_10
    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    :goto_8
    invoke-static {v10}, Lcom/uc/crashsdk/e;->a(Ljava/io/OutputStream;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    :try_start_11
    invoke-virtual {v10}, Ljava/io/OutputStream;->flush()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_9

    goto :goto_9

    :catchall_9
    move-exception v0

    move-object v1, v0

    :try_start_12
    invoke-static {v1}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    :goto_9
    :try_start_13
    invoke-static {v10, v9, v7}, Lcom/uc/crashsdk/a;->a(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_a

    goto :goto_a

    :catchall_a
    move-exception v0

    move-object v1, v0

    :try_start_14
    invoke-static {v1}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    :goto_a
    if-eqz p4, :cond_6

    :try_start_15
    invoke-virtual {v10}, Ljava/io/OutputStream;->flush()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_b

    goto :goto_b

    :catchall_b
    move-exception v0

    move-object v1, v0

    :try_start_16
    invoke-static {v1}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_3

    :cond_6
    :goto_b
    const/16 v1, 0x2800

    :try_start_17
    const-string v0, "/proc/meminfo"

    const-string v2, "meminfo:\n"

    invoke-virtual {v2, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v10, v2}, Lcom/uc/crashsdk/e$a;->write([B)V

    invoke-static {v10, v0, v1}, Lcom/uc/crashsdk/e;->b(Ljava/io/OutputStream;Ljava/lang/String;I)I
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_c

    goto :goto_c

    :catchall_c
    move-exception v0

    :try_start_18
    invoke-static {v0, v10}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_3

    :goto_c
    :try_start_19
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "/status"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "status:\n"

    invoke-virtual {v2, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v10, v2}, Lcom/uc/crashsdk/e$a;->write([B)V

    invoke-static {v10, v0, v1}, Lcom/uc/crashsdk/e;->b(Ljava/io/OutputStream;Ljava/lang/String;I)I
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_d

    goto :goto_d

    :catchall_d
    move-exception v0

    :try_start_1a
    invoke-static {v0, v10}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_3

    :goto_d
    :try_start_1b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/uc/crashsdk/e;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/uc/crashsdk/e$a;->write([B)V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_e

    goto :goto_e

    :catchall_e
    move-exception v0

    :try_start_1c
    invoke-static {v0, v10}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    :goto_e
    invoke-static {v10}, Lcom/uc/crashsdk/e;->a(Ljava/io/OutputStream;)V

    invoke-static {v10}, Lcom/uc/crashsdk/e;->f(Ljava/io/OutputStream;)V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_3

    const/4 v1, 0x0

    :try_start_1d
    invoke-static {v10, v9, v1}, Lcom/uc/crashsdk/a;->a(Ljava/io/OutputStream;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_f

    goto :goto_f

    :catchall_f
    move-exception v0

    move-object v1, v0

    :try_start_1e
    invoke-static {v1, v10}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    :goto_f
    sget-boolean v0, Lcom/uc/crashsdk/e;->ag:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    sput-boolean v1, Lcom/uc/crashsdk/e;->h:Z
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_3

    :try_start_1f
    const-string v0, "JAVADUMPFILES"

    invoke-static {v0}, Lcom/uc/crashsdk/e;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/uc/crashsdk/e$a;->write([B)V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_10

    :goto_10
    const/4 v2, 0x1

    goto :goto_11

    :catchall_10
    move-exception v0

    :try_start_20
    invoke-static {v0, v10}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    goto :goto_10

    :goto_11
    sput-boolean v2, Lcom/uc/crashsdk/e;->h:Z
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_3

    :cond_7
    :try_start_21
    invoke-virtual {v10}, Ljava/io/OutputStream;->flush()V
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_11

    goto :goto_12

    :catchall_11
    move-exception v0

    move-object v2, v0

    :try_start_22
    invoke-static {v2}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    :goto_12
    invoke-static {v10}, Lcom/uc/crashsdk/e;->b(Ljava/io/OutputStream;)V
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_3

    :try_start_23
    invoke-virtual {v10}, Ljava/io/OutputStream;->flush()V
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_12

    goto :goto_13

    :catchall_12
    move-exception v0

    move-object v2, v0

    :try_start_24
    invoke-static {v2}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_3

    :goto_13
    :try_start_25
    const-string v0, "battery info:\n"

    invoke-virtual {v0, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/uc/crashsdk/e$a;->write([B)V
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_13

    goto :goto_14

    :catchall_13
    move-exception v0

    :try_start_26
    invoke-static {v0, v10}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_3

    :goto_14
    :try_start_27
    sget-boolean v0, Lcom/uc/crashsdk/e;->ag:Z

    if-eqz v0, :cond_8

    sput-boolean v1, Lcom/uc/crashsdk/e;->h:Z

    const-string v0, "BATTERYINFO"

    invoke-static {v0}, Lcom/uc/crashsdk/e;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/uc/crashsdk/e$a;->write([B)V

    const/4 v2, 0x1

    sput-boolean v2, Lcom/uc/crashsdk/e;->h:Z

    goto :goto_16

    :catchall_14
    move-exception v0

    goto :goto_15

    :cond_8
    invoke-static {}, Lcom/uc/crashsdk/e;->Y()Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/uc/crashsdk/e$a;->write([B)V
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_14

    goto :goto_16

    :goto_15
    :try_start_28
    invoke-static {v0, v10}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    :cond_9
    :goto_16
    invoke-static {v10}, Lcom/uc/crashsdk/e;->a(Ljava/io/OutputStream;)V
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_3

    :try_start_29
    const-string v0, "disk info:\n"

    invoke-virtual {v0, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/uc/crashsdk/e$a;->write([B)V
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_15

    goto :goto_17

    :catchall_15
    move-exception v0

    :try_start_2a
    invoke-static {v0, v10}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    :goto_17
    sget-boolean v0, Lcom/uc/crashsdk/e;->ag:Z

    if-eqz v0, :cond_b

    sput-boolean v1, Lcom/uc/crashsdk/e;->h:Z
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_3

    :try_start_2b
    const-string v0, "FSSTAT"

    invoke-static {v0}, Lcom/uc/crashsdk/e;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/uc/crashsdk/e$a;->write([B)V
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_16

    :goto_18
    const/4 v2, 0x1

    goto :goto_19

    :catchall_16
    move-exception v0

    :try_start_2c
    invoke-static {v0, v10}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    goto :goto_18

    :goto_19
    sput-boolean v2, Lcom/uc/crashsdk/e;->h:Z
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_3

    :catchall_17
    :cond_a
    :goto_1a
    move-object/from16 v27, v7

    move-object/from16 v28, v8

    goto/16 :goto_1c

    :cond_b
    :try_start_2d
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    new-instance v2, Ljava/io/File;

    invoke-static {}, Lcom/uc/crashsdk/a/g;->b()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/uc/crashsdk/e;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_a

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    const-string v3, "/storage/emulated"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    goto :goto_1a

    :cond_c
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_1a

    :try_start_2e
    new-instance v0, Landroid/os/StatFs;

    invoke-direct {v0, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_17

    :try_start_2f
    const-string v3, "getBlockCountLong"

    const-string v4, "getBlockCount"

    invoke-static {v0, v3, v4}, Lcom/uc/crashsdk/e;->a(Landroid/os/StatFs;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v3

    const-string v5, "getBlockSizeLong"

    const-string v13, "getBlockSize"

    invoke-static {v0, v5, v13}, Lcom/uc/crashsdk/e;->a(Landroid/os/StatFs;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v13

    const-wide/16 v27, 0x400

    div-long v27, v3, v27

    mul-long v27, v27, v13

    const-wide/16 v29, 0x2800

    cmp-long v5, v27, v29

    if-ltz v5, :cond_a

    const-string v5, "getAvailableBlocksLong"

    const-string v1, "getAvailableBlocks"
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_1a

    move-object/from16 v27, v7

    move-object/from16 v28, v8

    :try_start_30
    invoke-static {v0, v5, v1}, Lcom/uc/crashsdk/e;->a(Landroid/os/StatFs;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v7

    const-string v1, "getFreeBlocksLong"

    const-string v5, "getFreeBlocks"

    invoke-static {v0, v1, v5}, Lcom/uc/crashsdk/e;->a(Landroid/os/StatFs;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_19

    :try_start_31
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v10, v2}, Lcom/uc/crashsdk/e$a;->write([B)V

    long-to-double v2, v3

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v2, v4

    long-to-double v4, v13

    mul-double/2addr v2, v4

    const-wide/high16 v31, 0x4090000000000000L    # 1024.0

    div-double v2, v2, v31

    double-to-long v2, v2

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v10, v2}, Lcom/uc/crashsdk/e$a;->write([B)V

    long-to-double v2, v7

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v2, v7

    mul-double/2addr v2, v4

    div-double v2, v2, v31

    double-to-long v2, v2

    new-instance v7, Ljava/lang/StringBuilder;

    move-object/from16 v8, v26

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v10, v2}, Lcom/uc/crashsdk/e$a;->write([B)V

    long-to-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v0, v2

    mul-double/2addr v0, v4

    div-double v0, v0, v31

    double-to-long v0, v0

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v3, v23

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/uc/crashsdk/e$a;->write([B)V

    new-instance v0, Ljava/lang/StringBuilder;

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " B\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/uc/crashsdk/e$a;->write([B)V
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_18

    goto :goto_1c

    :catchall_18
    move-exception v0

    :try_start_32
    invoke-static {v0, v10}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_19

    goto :goto_1c

    :catchall_19
    move-exception v0

    goto :goto_1b

    :catchall_1a
    move-exception v0

    move-object/from16 v27, v7

    move-object/from16 v28, v8

    :goto_1b
    :try_start_33
    invoke-static {v0, v10}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    :goto_1c
    invoke-static {v10}, Lcom/uc/crashsdk/e;->a(Ljava/io/OutputStream;)V
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_3

    :try_start_34
    const-string v0, "device status:\n"

    invoke-virtual {v0, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/uc/crashsdk/e$a;->write([B)V
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_1b

    goto :goto_1d

    :catchall_1b
    move-exception v0

    :try_start_35
    invoke-static {v0, v10}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    :goto_1d
    sget-boolean v0, Lcom/uc/crashsdk/e;->ag:Z
    :try_end_35
    .catchall {:try_start_35 .. :try_end_35} :catchall_3

    if-eqz v0, :cond_d

    const/4 v1, 0x0

    :try_start_36
    sput-boolean v1, Lcom/uc/crashsdk/e;->h:Z

    const-string v0, "DEVICESTATUS"

    invoke-static {v0}, Lcom/uc/crashsdk/e;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/uc/crashsdk/e$a;->write([B)V

    const/4 v1, 0x1

    sput-boolean v1, Lcom/uc/crashsdk/e;->h:Z
    :try_end_36
    .catchall {:try_start_36 .. :try_end_36} :catchall_1c

    goto/16 :goto_22

    :catchall_1c
    move-exception v0

    :goto_1e
    :try_start_37
    invoke-static {v0, v10}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V
    :try_end_37
    .catchall {:try_start_37 .. :try_end_37} :catchall_3

    goto/16 :goto_22

    :cond_d
    :try_start_38
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {}, Lcom/uc/crashsdk/a/g;->e()Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    move-object/from16 v2, v19

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-object/from16 v2, v28

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/uc/crashsdk/e$a;->write([B)V

    const-string v0, ""

    sget-object v1, Landroid/os/Build;->TAGS:Ljava/lang/String;

    if-eqz v1, :cond_e

    move-object v0, v1

    :cond_e
    new-instance v1, Ljava/lang/StringBuilder;

    move-object/from16 v3, v18

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/uc/crashsdk/a/g;->f()Z

    move-result v0

    if-eqz v0, :cond_f

    const-string v0, " (default root)"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1f

    :catchall_1d
    move-exception v0

    goto :goto_1e

    :cond_f
    :goto_1f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/uc/crashsdk/e$a;->write([B)V

    invoke-static {}, Lcom/uc/crashsdk/a/g;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    new-instance v1, Ljava/lang/StringBuilder;

    move-object/from16 v3, v17

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/uc/crashsdk/e$a;->write([B)V

    new-instance v0, Ljava/lang/StringBuilder;

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/uc/crashsdk/a/g;->g()Z

    move-result v1

    if-eqz v1, :cond_10

    const-string v1, "valid ("

    :goto_20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_21

    :cond_10
    const-string v1, "invalid ("

    goto :goto_20

    :goto_21
    invoke-static {}, Lcom/uc/crashsdk/a/g;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/uc/crashsdk/e$a;->write([B)V
    :try_end_38
    .catchall {:try_start_38 .. :try_end_38} :catchall_1d

    :cond_11
    :goto_22
    :try_start_39
    invoke-static {v10}, Lcom/uc/crashsdk/e;->a(Ljava/io/OutputStream;)V

    invoke-static {v10}, Lcom/uc/crashsdk/e;->c(Ljava/io/OutputStream;)V

    invoke-static {v10}, Lcom/uc/crashsdk/e;->d(Ljava/io/OutputStream;)V
    :try_end_39
    .catchall {:try_start_39 .. :try_end_39} :catchall_3

    move-object/from16 v1, v27

    const/4 v2, 0x0

    :try_start_3a
    invoke-static {v10, v9, v1, v2}, Lcom/uc/crashsdk/a;->b(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_3a
    .catchall {:try_start_3a .. :try_end_3a} :catchall_1e

    goto :goto_23

    :catchall_1e
    move-exception v0

    move-object v2, v0

    :try_start_3b
    invoke-static {v2, v10}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    :goto_23
    sget-boolean v0, Lcom/uc/crashsdk/e;->ag:Z

    if-eqz v0, :cond_12

    const/4 v2, 0x0

    sput-boolean v2, Lcom/uc/crashsdk/e;->h:Z
    :try_end_3b
    .catchall {:try_start_3b .. :try_end_3b} :catchall_3

    :try_start_3c
    const-string v0, "JAVACACHEDINFOS"

    invoke-static {v0}, Lcom/uc/crashsdk/e;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/uc/crashsdk/e$a;->write([B)V
    :try_end_3c
    .catchall {:try_start_3c .. :try_end_3c} :catchall_1f

    :goto_24
    const/4 v2, 0x1

    goto :goto_25

    :catchall_1f
    move-exception v0

    :try_start_3d
    invoke-static {v0, v10}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    goto :goto_24

    :goto_25
    sput-boolean v2, Lcom/uc/crashsdk/e;->h:Z
    :try_end_3d
    .catchall {:try_start_3d .. :try_end_3d} :catchall_3

    :cond_12
    :try_start_3e
    invoke-virtual {v10}, Ljava/io/OutputStream;->flush()V
    :try_end_3e
    .catchall {:try_start_3e .. :try_end_3e} :catchall_20

    :goto_26
    const/4 v2, 0x0

    goto :goto_27

    :catchall_20
    move-exception v0

    move-object v2, v0

    :try_start_3f
    invoke-static {v2}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V
    :try_end_3f
    .catchall {:try_start_3f .. :try_end_3f} :catchall_3

    goto :goto_26

    :goto_27
    :try_start_40
    invoke-static {v10, v9, v1, v2}, Lcom/uc/crashsdk/a;->a(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_40
    .catchall {:try_start_40 .. :try_end_40} :catchall_21

    goto :goto_28

    :catchall_21
    move-exception v0

    move-object v1, v0

    :try_start_41
    invoke-static {v1, v10}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    :goto_28
    sget-boolean v0, Lcom/uc/crashsdk/e;->ag:Z

    if-eqz v0, :cond_13

    const/4 v1, 0x0

    sput-boolean v1, Lcom/uc/crashsdk/e;->h:Z
    :try_end_41
    .catchall {:try_start_41 .. :try_end_41} :catchall_3

    :try_start_42
    const-string v0, "JAVACALLBACKINFOS"

    invoke-static {v0}, Lcom/uc/crashsdk/e;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/uc/crashsdk/e$a;->write([B)V
    :try_end_42
    .catchall {:try_start_42 .. :try_end_42} :catchall_22

    :goto_29
    const/4 v1, 0x1

    goto :goto_2a

    :catchall_22
    move-exception v0

    :try_start_43
    invoke-static {v0, v10}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    goto :goto_29

    :goto_2a
    sput-boolean v1, Lcom/uc/crashsdk/e;->h:Z

    :cond_13
    invoke-virtual {v10}, Lcom/uc/crashsdk/e$a;->a()V

    invoke-static {v10}, Lcom/uc/crashsdk/e;->a(Lcom/uc/crashsdk/e$a;)V
    :try_end_43
    .catchall {:try_start_43 .. :try_end_43} :catchall_3

    :try_start_44
    invoke-virtual {v10}, Ljava/io/OutputStream;->flush()V
    :try_end_44
    .catchall {:try_start_44 .. :try_end_44} :catchall_23

    goto :goto_2b

    :catchall_23
    move-exception v0

    move-object v1, v0

    :try_start_45
    invoke-static {v1}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V
    :try_end_45
    .catchall {:try_start_45 .. :try_end_45} :catchall_3

    :goto_2b
    if-eqz v25, :cond_14

    invoke-static {v10}, Lcom/uc/crashsdk/e;->b(Lcom/uc/crashsdk/e$a;)V

    :cond_14
    invoke-static {v10}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    invoke-static {v15}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    goto :goto_2d

    :catchall_24
    move-exception v0

    const/4 v2, 0x0

    move-object/from16 v24, v15

    move-object v15, v2

    goto :goto_2c

    :catchall_25
    move-exception v0

    const/4 v2, 0x0

    move-object v15, v2

    move-object/from16 v24, v15

    :goto_2c
    :try_start_46
    invoke-static {v0, v15}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V
    :try_end_46
    .catchall {:try_start_46 .. :try_end_46} :catchall_27

    cmp-long v0, p2, v21

    if-eqz v0, :cond_15

    invoke-static {v15}, Lcom/uc/crashsdk/e;->b(Lcom/uc/crashsdk/e$a;)V

    :cond_15
    invoke-static {v15}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    invoke-static/range {v24 .. v24}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    :goto_2d
    sget-boolean v0, Lcom/uc/crashsdk/e;->ag:Z

    if-nez v0, :cond_16

    invoke-static/range {p1 .. p1}, Lcom/uc/crashsdk/e;->r(Ljava/lang/String;)V

    :cond_16
    :try_start_47
    sget-boolean v0, Lcom/uc/crashsdk/e;->ag:Z

    if-nez v0, :cond_17

    invoke-static/range {p1 .. p1}, Lcom/uc/crashsdk/e;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/uc/crashsdk/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2e

    :catchall_26
    move-exception v0

    goto :goto_2f

    :cond_17
    move-object/from16 v0, p1

    :goto_2e
    const-string v1, "java"

    invoke-static {v0, v1}, Lcom/uc/crashsdk/e;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_47
    .catchall {:try_start_47 .. :try_end_47} :catchall_26

    goto :goto_30

    :goto_2f
    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    :goto_30
    return-object p1

    :catchall_27
    move-exception v0

    move-object v1, v0

    cmp-long v0, p2, v21

    if-eqz v0, :cond_18

    invoke-static {v15}, Lcom/uc/crashsdk/e;->b(Lcom/uc/crashsdk/e$a;)V

    :cond_18
    invoke-static {v15}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    invoke-static/range {v24 .. v24}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    throw v1
.end method

.method private static a(Ljava/util/Date;)Ljava/lang/String;
    .locals 8

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0}, Ljava/util/Date;->getYear()I

    move-result v1

    add-int/lit16 v1, v1, 0x76c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0}, Ljava/util/Date;->getMonth()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0}, Ljava/util/Date;->getDate()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0}, Ljava/util/Date;->getHours()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p0}, Ljava/util/Date;->getMinutes()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p0}, Ljava/util/Date;->getSeconds()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array/range {v2 .. v7}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "%d%02d%02d%02d%02d%02d"

    invoke-static {v0, v1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a([Ljava/lang/StackTraceElement;Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p0, :cond_3

    array-length v1, p0

    if-lez v1, :cond_3

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    array-length v4, p0

    move v5, v2

    move v6, v5

    :goto_1
    if-ge v5, v4, :cond_2

    aget-object v7, p0, v5

    add-int/lit8 v6, v6, 0x1

    const-string v8, "  at "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\n"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v3, :cond_1

    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    move v3, v1

    move v6, v2

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    if-nez v6, :cond_4

    :cond_3
    const-string p0, "  (no java stack)\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    return-object v0
.end method

.method public static a(I[Ljava/lang/Object;)V
    .locals 7

    const/16 v0, 0x1d

    const/4 v1, 0x0

    const/16 v2, 0xa

    const/4 v3, 0x0

    const/4 v4, 0x1

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    sget-boolean p0, Lcom/uc/crashsdk/e;->a:Z

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :pswitch_1
    sget-boolean p0, Lcom/uc/crashsdk/e;->a:Z

    if-nez p0, :cond_2

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_2
    :goto_0
    aget-object p0, p1, v3

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    cmp-long p0, v1, p0

    if-ltz p0, :cond_3

    invoke-static {}, Lcom/uc/crashsdk/a/h;->g()V

    const/16 p0, 0x64

    invoke-static {p0}, Lcom/uc/crashsdk/f;->a(I)V

    invoke-static {v4}, Lcom/uc/crashsdk/e;->d(Z)V

    invoke-static {v4}, Lcom/uc/crashsdk/f;->a(Z)I

    invoke-static {}, Lcom/uc/crashsdk/a/h;->b()V

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/uc/crashsdk/a/h;->h()V

    invoke-static {}, Lcom/uc/crashsdk/a/h;->i()V

    invoke-static {}, Lcom/uc/crashsdk/a/h;->c()V

    :goto_1
    invoke-static {v0}, Lcom/uc/crashsdk/e;->a(Ljava/util/Calendar;)V

    :pswitch_2
    invoke-static {}, Lcom/uc/crashsdk/e;->W()V

    return-void

    :pswitch_3
    :try_start_0
    invoke-static {}, Lcom/uc/crashsdk/a/g;->a()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/uc/crashsdk/e;->d(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_4

    return-void

    :cond_4
    sget p0, Lcom/uc/crashsdk/e;->N:I

    add-int/2addr p0, v4

    sput p0, Lcom/uc/crashsdk/e;->N:I

    if-lt p0, v2, :cond_6

    sget-boolean p0, Lcom/uc/crashsdk/b;->d:Z

    if-eqz p0, :cond_5

    const-string p0, "(get failed)"

    const/16 p1, 0x82

    invoke-static {p1, p0}, Lcom/uc/crashsdk/JNIBridge;->set(ILjava/lang/String;)J

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_5
    :goto_2
    return-void

    :cond_6
    invoke-static {}, Lcom/uc/crashsdk/e;->X()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :goto_3
    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    return-void

    :pswitch_4
    const/16 p0, 0x8

    invoke-static {p0}, Lcom/uc/crashsdk/JNIBridge;->cmd(I)J

    return-void

    :pswitch_5
    sget-boolean p0, Lcom/uc/crashsdk/e;->R:Z

    if-nez p0, :cond_7

    invoke-static {}, Lcom/uc/crashsdk/b;->B()Z

    move-result p0

    if-eqz p0, :cond_7

    invoke-static {}, Lcom/uc/crashsdk/g;->M()Z

    move-result p0

    if-eqz p0, :cond_7

    invoke-static {}, Lcom/uc/crashsdk/a/g;->a()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/uc/crashsdk/e;->b(Landroid/content/Context;)V

    return-void

    :cond_7
    sget-boolean p0, Lcom/uc/crashsdk/e;->R:Z

    if-eqz p0, :cond_9

    invoke-static {}, Lcom/uc/crashsdk/b;->B()Z

    move-result p0

    if-eqz p0, :cond_8

    invoke-static {}, Lcom/uc/crashsdk/g;->M()Z

    move-result p0

    if-nez p0, :cond_9

    :cond_8
    invoke-static {}, Lcom/uc/crashsdk/a/g;->a()Landroid/content/Context;

    move-result-object p0

    :try_start_1
    sget-object p1, Lcom/uc/crashsdk/e;->Q:Lcom/uc/crashsdk/e$c;

    invoke-virtual {p0, p1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    sput-boolean v3, Lcom/uc/crashsdk/e;->R:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_1
    move-exception p0

    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    :cond_9
    return-void

    :pswitch_6
    sget-boolean p0, Lcom/uc/crashsdk/b;->d:Z

    if-eqz p0, :cond_a

    const-string p0, "jni"

    invoke-static {p0}, Lcom/uc/crashsdk/e;->d(Ljava/lang/String;)Z

    move-result p0

    const/16 p1, 0x1c

    invoke-static {p1, p0}, Lcom/uc/crashsdk/JNIBridge;->set(IZ)J

    const-string p0, "anr"

    invoke-static {p0}, Lcom/uc/crashsdk/e;->d(Ljava/lang/String;)Z

    move-result p0

    invoke-static {v0, p0}, Lcom/uc/crashsdk/JNIBridge;->set(IZ)J

    :cond_a
    return-void

    :pswitch_7
    invoke-static {v3, v4}, Lcom/uc/crashsdk/e;->a(ZZ)Z

    return-void

    :pswitch_8
    invoke-static {v3}, Lcom/uc/crashsdk/e;->d(Z)V

    return-void

    :pswitch_9
    sget-object p0, Lcom/uc/crashsdk/e;->ab:Ljava/lang/Object;

    monitor-enter p0

    :try_start_2
    sget-boolean p1, Lcom/uc/crashsdk/e;->ac:Z

    if-nez p1, :cond_e

    invoke-static {}, Lcom/uc/crashsdk/g;->Q()Z

    move-result p1

    if-eqz p1, :cond_e

    invoke-static {}, Lcom/uc/crashsdk/b;->z()Z

    move-result p1

    if-nez p1, :cond_b

    goto :goto_5

    :cond_b
    invoke-static {}, Lcom/uc/crashsdk/b;->s()Z

    invoke-static {}, Lcom/uc/crashsdk/a/h;->f()V

    invoke-static {}, Lcom/uc/crashsdk/f;->c()V

    invoke-static {}, Lcom/uc/crashsdk/b;->F()Z

    move-result p1

    if-eqz p1, :cond_c

    invoke-static {}, Lcom/uc/crashsdk/e;->C()V

    goto :goto_4

    :catchall_2
    move-exception p1

    goto :goto_6

    :cond_c
    :goto_4
    invoke-static {}, Lcom/uc/crashsdk/g;->Q()Z

    move-result p1

    if-eqz p1, :cond_d

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    invoke-static {p1}, Lcom/uc/crashsdk/e;->a(Ljava/util/Calendar;)V

    :cond_d
    sput-boolean v4, Lcom/uc/crashsdk/e;->ac:Z

    monitor-exit p0

    return-void

    :cond_e
    :goto_5
    monitor-exit p0

    return-void

    :goto_6
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw p1

    :pswitch_a
    :try_start_3
    invoke-static {}, Lcom/uc/crashsdk/a;->d()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    return-void

    :catchall_3
    move-exception p0

    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    return-void

    :pswitch_b
    sget-boolean p0, Lcom/uc/crashsdk/e;->a:Z

    if-nez p0, :cond_10

    if-eqz p1, :cond_f

    goto :goto_7

    :cond_f
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_10
    :goto_7
    aget-object p0, p1, v3

    check-cast p0, Ljava/lang/String;

    aget-object v0, p1, v4

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x2

    aget-object p1, p1, v1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p0, v0, p1}, Lcom/uc/crashsdk/e;->a(Ljava/lang/String;ZZ)V

    return-void

    :pswitch_c
    sput-boolean v3, Lcom/uc/crashsdk/e;->L:Z

    invoke-static {}, Lcom/uc/crashsdk/e;->Y()Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {}, Lcom/uc/crashsdk/b;->g()Ljava/lang/String;

    move-result-object p1

    if-eqz p0, :cond_11

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/File;Ljava/lang/String;)Z

    :cond_11
    return-void

    :pswitch_d
    invoke-static {}, Lcom/uc/crashsdk/e;->ab()V

    return-void

    :pswitch_e
    sget-object p0, Lcom/uc/crashsdk/e;->Y:Ljava/lang/Object;

    monitor-enter p0

    :try_start_4
    sget-object p1, Lcom/uc/crashsdk/e;->X:Ljava/lang/Runnable;

    if-nez p1, :cond_12

    monitor-exit p0

    return-void

    :catchall_4
    move-exception p1

    goto/16 :goto_a

    :cond_12
    sput-boolean v4, Lcom/uc/crashsdk/e;->W:Z

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    invoke-static {}, Lcom/uc/crashsdk/b;->q()Z

    move-result p1

    if-nez p1, :cond_1b

    invoke-static {}, Lcom/uc/crashsdk/a/d;->e()Z

    move-result p1

    if-nez p1, :cond_13

    const-string p0, "DEBUG"

    invoke-static {}, Lcom/uc/crashsdk/a/d;->b()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/uc/crashsdk/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_13
    const-string p1, "unexp"

    invoke-static {p1}, Lcom/uc/crashsdk/e;->d(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_14

    const-string p0, "DEBUG"

    const-string p1, "unexp sample miss"

    invoke-static {p0, p1}, Lcom/uc/crashsdk/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_14
    invoke-static {}, Lcom/uc/crashsdk/g;->o()I

    move-result p1

    int-to-long v5, p1

    invoke-static {}, Lcom/uc/crashsdk/g;->p()I

    move-result p1

    invoke-static {v5, v6, p1}, Lcom/uc/crashsdk/JNIBridge;->nativeGenerateUnexpLog(JI)I

    move-result p1

    if-eqz p1, :cond_1a

    const/16 v3, 0xb

    invoke-static {v3}, Lcom/uc/crashsdk/f;->a(I)V

    and-int/lit16 v3, p1, 0x1100

    if-eqz v3, :cond_15

    const/16 p1, 0x69

    sput p1, Lcom/uc/crashsdk/e;->Z:I

    const/16 p1, 0x1e

    :goto_8
    invoke-static {p1}, Lcom/uc/crashsdk/f;->a(I)V

    goto :goto_9

    :cond_15
    and-int/lit16 v3, p1, 0x2100

    if-eqz v3, :cond_16

    const/16 p1, 0x68

    sput p1, Lcom/uc/crashsdk/e;->Z:I

    const/16 p1, 0x1f

    goto :goto_8

    :cond_16
    and-int/lit16 v3, p1, 0x4100

    if-eqz v3, :cond_17

    const/16 p1, 0x6a

    sput p1, Lcom/uc/crashsdk/e;->Z:I

    const/16 p1, 0x20

    goto :goto_8

    :cond_17
    and-int/lit16 v3, p1, 0x500

    if-eqz v3, :cond_18

    const/16 p1, 0x67

    sput p1, Lcom/uc/crashsdk/e;->Z:I

    invoke-static {v2}, Lcom/uc/crashsdk/f;->a(I)V

    goto :goto_9

    :cond_18
    and-int/lit16 p1, p1, 0x900

    if-eqz p1, :cond_19

    const/16 p1, 0x6b

    sput p1, Lcom/uc/crashsdk/e;->Z:I

    invoke-static {v0}, Lcom/uc/crashsdk/f;->a(I)V

    goto :goto_9

    :cond_19
    const/16 p1, 0x66

    sput p1, Lcom/uc/crashsdk/e;->Z:I

    :goto_9
    invoke-static {v4}, Lcom/uc/crashsdk/e;->a(Z)V

    :cond_1a
    monitor-enter p0

    :try_start_5
    sput-object v1, Lcom/uc/crashsdk/e;->X:Ljava/lang/Runnable;

    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    throw p1

    :cond_1b
    return-void

    :goto_a
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    throw p1

    :pswitch_f
    invoke-static {}, Lcom/uc/crashsdk/b;->I()I

    move-result p0

    const/4 p1, 0x5

    if-ne p0, p1, :cond_1c

    move p0, v4

    goto :goto_b

    :cond_1c
    move p0, v3

    :goto_b
    if-eqz p0, :cond_1d

    const-wide/16 p0, 0x1

    goto :goto_c

    :cond_1d
    const-wide/16 p0, 0x0

    :goto_c
    invoke-static {v2, p0, p1, v1, v1}, Lcom/uc/crashsdk/JNIBridge;->nativeCmd(IJLjava/lang/String;[Ljava/lang/Object;)J

    sput-boolean v4, Lcom/uc/crashsdk/a;->c:Z

    invoke-static {v3}, Lcom/uc/crashsdk/a;->a(Z)Z

    sput-boolean v4, Lcom/uc/crashsdk/e;->L:Z

    invoke-static {}, Lcom/uc/crashsdk/e;->Z()V

    invoke-static {}, Lcom/uc/crashsdk/e;->y()V

    return-void

    :pswitch_data_0
    .packed-switch 0x191
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static a(Landroid/content/Context;)V
    .locals 4

    :try_start_0
    invoke-static {}, Lcom/uc/crashsdk/e;->V()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/uc/crashsdk/e$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/uc/crashsdk/e$c;-><init>(B)V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.ANR"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x3

    invoke-static {v2}, Lcom/uc/crashsdk/a/f;->a(I)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v3, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method private static a(Lcom/uc/crashsdk/e$a;)V
    .locals 3

    const-string v0, "log end: "

    :try_start_0
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {}, Lcom/uc/crashsdk/e;->n()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/uc/crashsdk/e$a;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    invoke-static {v0, p0}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    return-void
.end method

.method private static a(Lcom/uc/crashsdk/e$a;Ljava/lang/String;J)V
    .locals 4

    const-string v0, "UTF-8"

    sget-boolean v1, Lcom/uc/crashsdk/b;->d:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    :try_start_0
    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-static {v1}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    :goto_0
    invoke-static {p1, p2, p3}, Lcom/uc/crashsdk/JNIBridge;->nativeDumpThreads(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p1

    sget-boolean p2, Lcom/uc/crashsdk/e;->ag:Z

    if-nez p2, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const/16 p3, 0x200

    if-ge p2, p3, :cond_1

    const-string p2, "/"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/16 p2, 0xa

    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(I)I

    move-result p2

    if-gez p2, :cond_1

    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "Can not found "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_0
    move-object v3, v2

    move-object v2, p1

    move-object p1, v3

    goto :goto_1

    :cond_1
    move-object v2, p1

    goto :goto_1

    :cond_2
    const-string p1, "Native not initialized, skip dump!"

    :goto_1
    if-eqz p1, :cond_3

    :try_start_1
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/uc/crashsdk/e$a;->write([B)V

    const-string p1, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/uc/crashsdk/e$a;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    invoke-static {p1}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    :goto_2
    invoke-static {p0}, Lcom/uc/crashsdk/e;->a(Ljava/io/OutputStream;)V

    goto :goto_3

    :cond_3
    if-eqz v2, :cond_4

    sget-boolean p1, Lcom/uc/crashsdk/e;->ag:Z

    if-nez p1, :cond_4

    const/high16 p1, 0x100000

    invoke-static {p0, v2, p1}, Lcom/uc/crashsdk/e;->b(Ljava/io/OutputStream;Ljava/lang/String;I)I

    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    :cond_4
    :goto_3
    :try_start_2
    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    return-void

    :catchall_2
    move-exception p0

    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method private static a(Ljava/io/OutputStream;)V
    .locals 2

    :try_start_0
    const-string v0, "--- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---\n"

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    invoke-static {v0, p0}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    return-void
.end method

.method public static a(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "$^"

    const/4 v1, 0x0

    sput-boolean v1, Lcom/uc/crashsdk/e;->h:Z

    :try_start_0
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "`"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "^$"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "UTF-8"

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    :goto_0
    const/4 p0, 0x1

    sput-boolean p0, Lcom/uc/crashsdk/e;->h:Z

    return-void
.end method

.method public static a(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;IZZ)V
    .locals 4

    const-string v0, "`"

    const-string v1, "$^"

    const/4 v2, 0x0

    sput-boolean v2, Lcom/uc/crashsdk/e;->h:Z

    const/4 v2, 0x1

    :try_start_0
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "^$"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "UTF-8"

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    :goto_0
    sput-boolean v2, Lcom/uc/crashsdk/e;->h:Z

    invoke-static {p0}, Lcom/uc/crashsdk/e;->a(Ljava/io/OutputStream;)V

    return-void
.end method

.method private static a(Ljava/lang/String;ZZ)V
    .locals 28

    const-string v0, "crashsdk uploading logs"

    const-string v1, "crashsdk"

    invoke-static {v1, v0}, Lcom/uc/crashsdk/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/uc/crashsdk/e;->n:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static/range {p0 .. p0}, Lcom/uc/crashsdk/a/g;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-static {}, Lcom/uc/crashsdk/g;->X()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Folder not exist: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "crashsdk"

    invoke-static {v2, v0}, Lcom/uc/crashsdk/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_12

    :catchall_0
    move-exception v0

    goto/16 :goto_14

    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "List folder failed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/uc/crashsdk/a/a;->b(Ljava/lang/String;)V

    goto/16 :goto_12

    :cond_1
    array-length v3, v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    :goto_0
    if-ge v5, v3, :cond_22

    aget-object v4, v2, v5

    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {v4}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/File;)Z

    move-object/from16 v17, v2

    :cond_2
    move/from16 v20, v3

    goto :goto_1

    :cond_3
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v17, v2

    const-string v2, ".tmp"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    const-wide/16 v18, 0x3e8

    if-eqz v2, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v22

    sub-long v20, v20, v22

    div-long v20, v20, v18

    const-wide/16 v18, 0x1e

    cmp-long v2, v20, v18

    if-lez v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    move/from16 v20, v3

    const-string v3, "delete legacy tmp file: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/uc/crashsdk/a/a;->b(Ljava/lang/String;)V

    add-int/lit8 v7, v7, 0x1

    invoke-static {v4}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/File;)Z

    :goto_1
    move/from16 v19, v11

    :goto_2
    move-object/from16 v11, p0

    goto/16 :goto_10

    :cond_4
    move/from16 v20, v3

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v2

    move/from16 v21, v14

    move/from16 v22, v15

    const-wide/16 v14, 0x0

    cmp-long v0, v2, v14

    if-nez v0, :cond_5

    add-int/lit8 v6, v6, 0x1

    invoke-static {v4}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/File;)Z

    move/from16 v19, v11

    move/from16 v14, v21

    move/from16 v15, v22

    goto :goto_2

    :cond_5
    if-eqz p1, :cond_8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v23

    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v25

    sub-long v23, v23, v25

    div-long v2, v23, v18

    cmp-long v0, v2, v14

    if-ltz v0, :cond_7

    const-wide/16 v18, 0x2

    cmp-long v0, v2, v18

    if-gez v0, :cond_6

    :goto_3
    const/4 v0, 0x0

    goto :goto_4

    :cond_6
    const-wide/16 v18, 0x5

    cmp-long v0, v2, v18

    if-gez v0, :cond_7

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v14, ".log"

    invoke-virtual {v0, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_3

    :cond_7
    const/4 v0, 0x1

    :goto_4
    sget-object v14, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v23, v6

    const-string v6, "file: "

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", modify interval: "

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " s, safe upload: "

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/uc/crashsdk/a/a;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_9

    add-int/lit8 v8, v8, 0x1

    :goto_5
    move/from16 v19, v11

    move/from16 v14, v21

    move/from16 v15, v22

    move/from16 v6, v23

    goto/16 :goto_2

    :cond_8
    move/from16 v23, v6

    :cond_9
    const/4 v2, 0x3

    :try_start_1
    invoke-static {}, Lcom/uc/crashsdk/g;->k()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "([^_]+)_([^_]+)_([^_]+)\\.crashsdk"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_a

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    sget-object v14, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v3}, Lcom/uc/crashsdk/e;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/uc/crashsdk/e;->n()Ljava/lang/String;

    move-result-object v14

    invoke-static {}, Lcom/uc/crashsdk/e;->Q()Ljava/lang/String;

    move-result-object v15

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/uc/crashsdk/g;->X()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "File "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " matches, rename to "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "crashsdk"

    invoke-static {v3, v0}, Lcom/uc/crashsdk/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_6

    :catchall_1
    move-exception v0

    goto :goto_7

    :cond_a
    move-object v2, v4

    :goto_6
    if-eq v2, v4, :cond_b

    add-int/lit8 v12, v12, 0x1

    :cond_b
    move-object v4, v2

    goto :goto_8

    :goto_7
    :try_start_2
    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    :goto_8
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/uc/crashsdk/e;->n(Ljava/lang/String;)[Z

    move-result-object v2

    const/4 v3, 0x0

    aget-boolean v6, v2, v3

    const/4 v14, 0x1

    aget-boolean v15, v2, v14

    invoke-static {v0, v6, v15}, Lcom/uc/crashsdk/e;->b(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v6

    if-eq v0, v6, :cond_e

    aget-boolean v0, v2, v3

    if-eqz v0, :cond_c

    add-int/lit8 v11, v11, 0x1

    :cond_c
    const/4 v3, 0x1

    aget-boolean v0, v2, v3

    if-eqz v0, :cond_d

    add-int/lit8 v9, v9, 0x1

    :cond_d
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :cond_e
    invoke-static {v4}, Lcom/uc/crashsdk/d;->a(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_f

    move-object v0, v2

    goto :goto_9

    :cond_f
    if-eq v4, v0, :cond_10

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    :cond_10
    :goto_9
    if-nez v0, :cond_11

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "onBeforeUploadLog return null, skip upload: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/uc/crashsdk/a/a;->b(Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_11
    invoke-static {}, Lcom/uc/crashsdk/g;->B()I

    move-result v3

    if-lez v3, :cond_12

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v14

    int-to-long v3, v3

    cmp-long v3, v14, v3

    if-ltz v3, :cond_12

    add-int/lit8 v10, v10, 0x1

    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/File;)Z

    goto/16 :goto_5

    :cond_12
    new-instance v3, Lcom/uc/crashsdk/e$d;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/uc/crashsdk/e$d;-><init>(B)V

    const-wide/16 v14, 0x0

    iput-wide v14, v3, Lcom/uc/crashsdk/e$d;->b:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    iput-wide v14, v3, Lcom/uc/crashsdk/e$d;->a:J

    invoke-static {}, Lcom/uc/crashsdk/e;->U()Ljava/lang/String;

    move-result-object v6

    new-instance v14, Ljava/io/File;

    invoke-direct {v14, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v14

    if-eqz v14, :cond_13

    new-instance v14, Lcom/uc/crashsdk/a/e;

    filled-new-array {v6, v3}, [Ljava/lang/Object;

    move-result-object v15

    const/16 v4, 0x1c3

    invoke-direct {v14, v4, v15}, Lcom/uc/crashsdk/a/e;-><init>(I[Ljava/lang/Object;)V

    invoke-static {v6, v14}, Lcom/uc/crashsdk/e;->a(Ljava/lang/String;Lcom/uc/crashsdk/a/e;)Z

    :cond_13
    invoke-static {}, Lcom/uc/crashsdk/g;->C()J

    move-result-wide v14

    invoke-static {}, Lcom/uc/crashsdk/g;->D()I

    move-result v4

    invoke-static {}, Lcom/uc/crashsdk/g;->E()I

    move-result v6

    const-wide/16 v18, 0x0

    cmp-long v18, v14, v18

    if-ltz v18, :cond_14

    move/from16 v19, v11

    move/from16 v18, v12

    iget-wide v11, v3, Lcom/uc/crashsdk/e$d;->b:J

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v26

    add-long v11, v11, v26

    cmp-long v11, v11, v14

    if-lez v11, :cond_15

    const/4 v11, 0x1

    iput-boolean v11, v3, Lcom/uc/crashsdk/e$d;->e:Z

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "Reach max upload bytes: "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_a
    invoke-static {v4}, Lcom/uc/crashsdk/a/a;->b(Ljava/lang/String;)V

    goto :goto_b

    :cond_14
    move/from16 v19, v11

    move/from16 v18, v12

    :cond_15
    invoke-static {}, Lcom/uc/crashsdk/g;->f()Z

    move-result v11

    if-nez v11, :cond_17

    invoke-static {v0}, Lcom/uc/crashsdk/e;->b(Ljava/io/File;)Z

    move-result v11

    if-eqz v11, :cond_16

    if-ltz v4, :cond_17

    iget v6, v3, Lcom/uc/crashsdk/e$d;->c:I

    if-lt v6, v4, :cond_17

    const/4 v6, 0x1

    iput-boolean v6, v3, Lcom/uc/crashsdk/e$d;->g:Z

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v11, "Reach max upload builtin log count: "

    invoke-direct {v6, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_a

    :cond_16
    if-ltz v6, :cond_17

    iget v4, v3, Lcom/uc/crashsdk/e$d;->d:I

    if-lt v4, v6, :cond_17

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/uc/crashsdk/e$d;->f:Z

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v11, "Reach max upload custom log count: "

    invoke-direct {v4, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_a

    :cond_17
    :goto_b
    iget-boolean v4, v3, Lcom/uc/crashsdk/e$d;->e:Z

    if-eqz v4, :cond_18

    move-object/from16 v11, p0

    move/from16 v12, v18

    move/from16 v15, v22

    move/from16 v6, v23

    const/4 v14, 0x1

    goto/16 :goto_10

    :cond_18
    iget-boolean v4, v3, Lcom/uc/crashsdk/e$d;->g:Z

    if-eqz v4, :cond_19

    move-object/from16 v11, p0

    move/from16 v12, v18

    move/from16 v14, v21

    move/from16 v6, v23

    const/4 v15, 0x1

    goto/16 :goto_10

    :cond_19
    iget-boolean v4, v3, Lcom/uc/crashsdk/e$d;->f:Z

    if-eqz v4, :cond_1a

    move-object/from16 v11, p0

    move/from16 v12, v18

    move/from16 v14, v21

    move/from16 v15, v22

    move/from16 v6, v23

    const/16 v16, 0x1

    goto/16 :goto_10

    :cond_1a
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/uc/crashsdk/e;->P()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1b

    const-string v6, "_"

    const/16 v11, 0xa

    invoke-virtual {v4, v6, v11}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    array-length v6, v4

    const/16 v11, 0x9

    if-ne v6, v11, :cond_1b

    const/4 v6, 0x1

    aget-object v4, v4, v6

    goto :goto_c

    :cond_1b
    move-object v4, v2

    :goto_c
    if-eqz v4, :cond_1c

    invoke-static {}, Lcom/uc/crashsdk/g;->T()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c

    const/4 v4, 0x1

    goto :goto_d

    :cond_1c
    const/4 v4, 0x0

    :goto_d
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v11, p0

    invoke-static {v0, v6, v11}, Lcom/uc/crashsdk/a/c;->a(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1f

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v12, "Uploaded log: "

    invoke-direct {v6, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v12, "crashsdk"

    invoke-static {v12, v6, v2}, Lcom/uc/crashsdk/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    if-eqz v4, :cond_1d

    const/16 v4, 0xd

    invoke-static {v4}, Lcom/uc/crashsdk/f;->a(I)V

    :cond_1d
    iget-wide v12, v3, Lcom/uc/crashsdk/e$d;->b:J

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v14

    add-long/2addr v12, v14

    iput-wide v12, v3, Lcom/uc/crashsdk/e$d;->b:J

    invoke-static {v0}, Lcom/uc/crashsdk/e;->b(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_1e

    iget v4, v3, Lcom/uc/crashsdk/e$d;->c:I

    const/4 v6, 0x1

    add-int/2addr v4, v6

    iput v4, v3, Lcom/uc/crashsdk/e$d;->c:I

    goto :goto_e

    :cond_1e
    const/4 v6, 0x1

    iget v4, v3, Lcom/uc/crashsdk/e$d;->d:I

    add-int/2addr v4, v6

    iput v4, v3, Lcom/uc/crashsdk/e$d;->d:I

    :goto_e
    invoke-static {}, Lcom/uc/crashsdk/e;->U()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Lcom/uc/crashsdk/a/e;

    filled-new-array {v4, v3}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v12, 0x1c4

    invoke-direct {v6, v12, v3}, Lcom/uc/crashsdk/a/e;-><init>(I[Ljava/lang/Object;)V

    invoke-static {v4, v6}, Lcom/uc/crashsdk/e;->a(Ljava/lang/String;Lcom/uc/crashsdk/a/e;)Z

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    const/4 v3, 0x3

    const/4 v13, 0x0

    goto :goto_f

    :cond_1f
    add-int/lit8 v13, v13, 0x1

    if-eqz v4, :cond_20

    const/16 v0, 0xe

    invoke-static {v0}, Lcom/uc/crashsdk/f;->a(I)V

    :cond_20
    const/4 v3, 0x3

    :goto_f
    if-lt v13, v3, :cond_21

    const-string v0, "Upload failed 3 times continuously, abort upload!"

    const-string v3, "crashsdk"

    invoke-static {v3, v0, v2}, Lcom/uc/crashsdk/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move/from16 v12, v18

    move/from16 v11, v19

    goto :goto_11

    :cond_21
    move/from16 v12, v18

    move/from16 v14, v21

    move/from16 v15, v22

    move/from16 v6, v23

    :goto_10
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v2, v17

    move/from16 v11, v19

    move/from16 v3, v20

    goto/16 :goto_0

    :cond_22
    move/from16 v23, v6

    move/from16 v21, v14

    move/from16 v22, v15

    :goto_11
    if-lez v7, :cond_23

    const/16 v0, 0xc8

    invoke-static {v0, v7}, Lcom/uc/crashsdk/f;->a(II)V

    :cond_23
    if-lez v23, :cond_24

    const/16 v0, 0xf

    move/from16 v4, v23

    invoke-static {v0, v4}, Lcom/uc/crashsdk/f;->a(II)V

    :cond_24
    if-lez v10, :cond_25

    const/16 v0, 0x11

    invoke-static {v0, v10}, Lcom/uc/crashsdk/f;->a(II)V

    :cond_25
    if-eqz v21, :cond_26

    const/16 v0, 0x13

    invoke-static {v0}, Lcom/uc/crashsdk/f;->a(I)V

    :cond_26
    if-eqz v22, :cond_27

    const/16 v0, 0x14

    invoke-static {v0}, Lcom/uc/crashsdk/f;->a(I)V

    :cond_27
    if-eqz v16, :cond_28

    const/16 v0, 0x15

    invoke-static {v0}, Lcom/uc/crashsdk/f;->a(I)V

    :cond_28
    if-nez v21, :cond_29

    if-nez v22, :cond_29

    if-eqz v16, :cond_2a

    :cond_29
    const/16 v0, 0x12

    invoke-static {v0}, Lcom/uc/crashsdk/f;->a(I)V

    :cond_2a
    if-lez v11, :cond_2b

    const/16 v0, 0x18

    invoke-static {v0, v11}, Lcom/uc/crashsdk/f;->a(II)V

    :cond_2b
    if-lez v9, :cond_2c

    const/16 v0, 0xc9

    invoke-static {v0, v9}, Lcom/uc/crashsdk/f;->a(II)V

    :cond_2c
    if-lez v12, :cond_2d

    const/16 v0, 0x19

    invoke-static {v0, v12}, Lcom/uc/crashsdk/f;->a(II)V

    :cond_2d
    if-lez v8, :cond_2f

    const/16 v0, 0x1a

    invoke-static {v0, v8}, Lcom/uc/crashsdk/f;->a(II)V

    goto :goto_12

    :cond_2e
    const-string v0, "upload url is empty!"

    const-string v2, "crashsdk"

    invoke-static {v2, v0}, Lcom/uc/crashsdk/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2f
    :goto_12
    if-eqz p2, :cond_30

    :try_start_3
    sget-object v0, Lcom/uc/crashsdk/e;->o:Landroid/os/ConditionVariable;

    :goto_13
    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_15

    :catchall_2
    move-exception v0

    goto :goto_16

    :goto_14
    :try_start_4
    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-eqz p2, :cond_30

    :try_start_5
    sget-object v0, Lcom/uc/crashsdk/e;->o:Landroid/os/ConditionVariable;

    goto :goto_13

    :cond_30
    :goto_15
    monitor-exit v1

    return-void

    :catchall_3
    move-exception v0

    move-object v2, v0

    if-eqz p2, :cond_31

    sget-object v0, Lcom/uc/crashsdk/e;->o:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    :cond_31
    throw v2

    :goto_16
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0
.end method

.method private static a(Ljava/lang/Throwable;)V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/uc/crashsdk/e;->a([Ljava/lang/StackTraceElement;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "DEBUG"

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/uc/crashsdk/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V
    .locals 2

    const-string v0, "UTF-8"

    if-eqz p1, :cond_0

    :try_start_0
    const-string v1, "[DEBUG] CrashHandler occurred new exception:\n"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    new-instance v1, Ljava/io/PrintStream;

    invoke-direct {v1, p1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    const-string v1, "\n\n"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method private static a(Ljava/util/Calendar;)V
    .locals 8

    invoke-static {}, Lcom/uc/crashsdk/g;->S()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    const/4 v2, 0x5

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Ljava/util/Calendar;->add(II)V

    const/16 v2, 0xb

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xc

    invoke-virtual {p0, v2, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xd

    invoke-virtual {p0, v2, v3}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    sub-long v0, v4, v0

    const-wide/32 v6, 0x36ee80

    cmp-long p0, v0, v6

    if-lez p0, :cond_1

    goto :goto_0

    :cond_1
    const-wide/16 v6, 0x3e8

    add-long/2addr v6, v0

    :goto_0
    new-instance p0, Lcom/uc/crashsdk/a/e;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x19f

    invoke-direct {p0, v1, v0}, Lcom/uc/crashsdk/a/e;-><init>(I[Ljava/lang/Object;)V

    invoke-static {v3, p0, v6, v7}, Lcom/uc/crashsdk/a/f;->a(ILjava/lang/Runnable;J)Z

    return-void
.end method

.method public static a(Z)V
    .locals 10

    :try_start_0
    invoke-static {}, Lcom/uc/crashsdk/b;->y()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/uc/crashsdk/g;->X()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lcom/uc/crashsdk/g;->l()I

    move-result v1

    invoke-static {}, Lcom/uc/crashsdk/g;->m()I

    move-result v2

    array-length v3, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    if-ge v3, v4, :cond_2

    return-void

    :cond_2
    array-length v3, v0

    const/4 v4, 0x0

    move v5, v4

    move v6, v5

    move v7, v6

    :goto_0
    if-ge v5, v3, :cond_4

    aget-object v8, v0, v5

    invoke-static {v8}, Lcom/uc/crashsdk/e;->b(Ljava/io/File;)Z

    move-result v8

    if-eqz v8, :cond_3

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v7, v7, 0x1

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_6

    :cond_4
    if-eqz p0, :cond_5

    if-lt v6, v1, :cond_5

    sub-int/2addr v6, v1

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_5
    move v6, v4

    :goto_2
    if-nez p0, :cond_6

    if-lt v7, v2, :cond_6

    sub-int/2addr v7, v2

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_6
    move v7, v4

    :goto_3
    if-nez v6, :cond_7

    if-nez v7, :cond_7

    return-void

    :cond_7
    new-instance p0, Lcom/uc/crashsdk/e$b;

    invoke-direct {p0, v4}, Lcom/uc/crashsdk/e$b;-><init>(B)V

    invoke-static {v0, p0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    array-length p0, v0

    move v1, v6

    move v2, v7

    :goto_4
    if-ge v4, p0, :cond_b

    aget-object v3, v0, v4

    invoke-static {v3}, Lcom/uc/crashsdk/e;->b(Ljava/io/File;)Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v8, "crashsdk"

    if-eqz v5, :cond_8

    if-lez v1, :cond_8

    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v9, "Delete oldest crash log: "

    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Lcom/uc/crashsdk/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    add-int/lit8 v1, v1, -0x1

    goto :goto_5

    :cond_8
    if-nez v5, :cond_9

    if-lez v2, :cond_9

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v9, "Delete oldest custom log: "

    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Lcom/uc/crashsdk/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    add-int/lit8 v2, v2, -0x1

    :cond_9
    :goto_5
    if-nez v1, :cond_a

    if-eqz v2, :cond_b

    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_b
    const/16 p0, 0x10

    add-int v0, v6, v7

    invoke-static {p0, v0}, Lcom/uc/crashsdk/f;->a(II)V

    if-lez v6, :cond_c

    const/16 p0, 0x16

    invoke-static {p0, v6}, Lcom/uc/crashsdk/f;->a(II)V

    :cond_c
    if-lez v7, :cond_d

    const/16 p0, 0x17

    invoke-static {p0, v7}, Lcom/uc/crashsdk/f;->a(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_d
    return-void

    :goto_6
    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static a()Z
    .locals 5

    sget-wide v0, Lcom/uc/crashsdk/e;->f:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const-wide/16 v1, 0x1

    if-nez v0, :cond_0

    const-wide/16 v3, 0x2

    sput-wide v3, Lcom/uc/crashsdk/e;->f:J

    const-string v0, "logs"

    invoke-static {v0}, Lcom/uc/crashsdk/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/uc/crashsdk/e;->h(Ljava/lang/String;)J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-nez v0, :cond_0

    sput-wide v1, Lcom/uc/crashsdk/e;->f:J

    :cond_0
    sget-wide v3, Lcom/uc/crashsdk/e;->f:J

    cmp-long v0, v3, v1

    if-nez v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static a(Landroid/os/ParcelFileDescriptor;)Z
    .locals 5

    sget-boolean v0, Lcom/uc/crashsdk/e;->af:Z

    const-string v1, "crashsdk"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const-string p0, "Can not call setHostFd and getHostFd in the same process!"

    invoke-static {v1, p0}, Lcom/uc/crashsdk/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_0
    sget-boolean v0, Lcom/uc/crashsdk/b;->d:Z

    if-nez v0, :cond_1

    const-string p0, "Crash so is not loaded!"

    invoke-static {v1, p0}, Lcom/uc/crashsdk/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_1
    sget-object v0, Lcom/uc/crashsdk/e;->ae:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_2

    const-string v0, "Has already set host fd!"

    invoke-static {v1, v0}, Lcom/uc/crashsdk/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    sput-object p0, Lcom/uc/crashsdk/e;->ae:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result p0

    const/16 v0, 0xd

    int-to-long v3, p0

    const/4 v1, 0x0

    invoke-static {v0, v3, v4, v1, v1}, Lcom/uc/crashsdk/JNIBridge;->nativeCmd(IJLjava/lang/String;[Ljava/lang/Object;)J

    move-result-wide v0

    long-to-int v0, v0

    const/4 v1, 0x1

    const/4 v3, -0x1

    if-eq v0, v3, :cond_3

    move v4, v1

    goto :goto_0

    :cond_3
    move v4, v2

    :goto_0
    sput-boolean v4, Lcom/uc/crashsdk/e;->ag:Z

    if-eq p0, v3, :cond_5

    if-eq v0, v3, :cond_4

    goto :goto_1

    :cond_4
    return v2

    :cond_5
    :goto_1
    return v1
.end method

.method private static a(Ljava/lang/String;JLjava/lang/StringBuffer;Ljava/lang/String;JLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)Z
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/StringBuffer;",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move-object/from16 v4, p7

    move-object/from16 v5, p8

    move-object/from16 v6, p9

    move-object/from16 v7, p10

    const-wide/16 v8, 0x0

    cmp-long v10, v2, v8

    const/4 v11, 0x0

    if-nez v10, :cond_0

    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v12, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v12, v11

    move-object v13, v12

    goto :goto_3

    :cond_0
    move-object v12, v11

    :goto_0
    :try_start_1
    new-instance v13, Lcom/uc/crashsdk/e$a;

    invoke-direct {v13, v2, v3, v12}, Lcom/uc/crashsdk/e$a;-><init>(JLjava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :try_start_2
    sget-object v14, Lcom/uc/crashsdk/e;->s:Ljava/util/ArrayList;

    monitor-enter v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    sput-object v1, Lcom/uc/crashsdk/e;->u:Ljava/lang/String;

    sget-boolean v0, Lcom/uc/crashsdk/b;->d:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/uc/crashsdk/e;->u:Ljava/lang/String;

    const/16 v15, 0x7e

    invoke-static {v15, v0}, Lcom/uc/crashsdk/JNIBridge;->set(ILjava/lang/String;)J

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_2

    :cond_1
    :goto_1
    monitor-exit v14

    goto :goto_4

    :goto_2
    monitor-exit v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v0

    goto :goto_3

    :catchall_3
    move-exception v0

    move-object v13, v11

    :goto_3
    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    :goto_4
    const/4 v14, 0x0

    if-nez v13, :cond_2

    invoke-static {v13}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    invoke-static {v12}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    return v14

    :cond_2
    const-wide/16 v15, 0x1

    and-long v15, p5, v15

    cmp-long v0, v15, v8

    if-eqz v0, :cond_3

    move-object/from16 v15, p4

    :try_start_5
    invoke-static {v13, v1, v15}, Lcom/uc/crashsdk/e;->b(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    goto :goto_5

    :catchall_4
    move-exception v0

    goto/16 :goto_10

    :cond_3
    :goto_5
    :try_start_6
    invoke-virtual/range {p3 .. p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v13, v0}, Lcom/uc/crashsdk/e$a;->write([B)V

    const-string v0, "\n"

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v13, v0}, Lcom/uc/crashsdk/e$a;->write([B)V

    invoke-virtual {v13}, Ljava/io/OutputStream;->flush()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    goto :goto_6

    :catchall_5
    move-exception v0

    :try_start_7
    invoke-static {v0, v13}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    :goto_6
    invoke-static {v13}, Lcom/uc/crashsdk/e;->a(Ljava/io/OutputStream;)V

    const-wide/16 v0, 0x4

    and-long v0, p5, v0

    cmp-long v0, v0, v8

    if-eqz v0, :cond_4

    invoke-static {v13}, Lcom/uc/crashsdk/e;->b(Ljava/io/OutputStream;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :try_start_8
    invoke-virtual {v13}, Ljava/io/OutputStream;->flush()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    goto :goto_7

    :catchall_6
    move-exception v0

    move-object v1, v0

    :try_start_9
    invoke-static {v1}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    :cond_4
    :goto_7
    if-eqz v4, :cond_5

    invoke-virtual/range {p7 .. p7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5

    const-string v0, "UTF-8"

    invoke-static {v13, v0, v4}, Lcom/uc/crashsdk/a;->a(Ljava/io/OutputStream;Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_5
    if-eqz v5, :cond_6

    invoke-virtual/range {p8 .. p8}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_6

    const-string v0, "UTF-8"

    const-string v1, "--- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---\n"

    invoke-static {v13, v0, v1, v5}, Lcom/uc/crashsdk/a;->a(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_6
    if-eqz v6, :cond_7

    invoke-virtual/range {p9 .. p9}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_7

    const-string v0, "UTF-8"

    const-string v1, "--- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---\n"

    invoke-static {v13, v0, v1, v6}, Lcom/uc/crashsdk/a;->b(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    :cond_7
    if-eqz v7, :cond_8

    :try_start_a
    invoke-virtual {v13}, Ljava/io/OutputStream;->flush()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    goto :goto_8

    :catchall_7
    move-exception v0

    move-object v1, v0

    :try_start_b
    invoke-static {v1, v13}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    :goto_8
    :try_start_c
    const-string v0, "threads dump:\n"

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v13, v0}, Lcom/uc/crashsdk/e$a;->write([B)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_8

    goto :goto_9

    :catchall_8
    move-exception v0

    :try_start_d
    invoke-static {v0, v13}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    :goto_9
    sput-boolean v14, Lcom/uc/crashsdk/e;->h:Z

    sput-object v7, Lcom/uc/crashsdk/e;->w:Ljava/lang/String;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    :try_start_e
    invoke-static {v13, v7, v2, v3}, Lcom/uc/crashsdk/e;->a(Lcom/uc/crashsdk/e$a;Ljava/lang/String;J)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_9

    goto :goto_a

    :catchall_9
    move-exception v0

    move-object v1, v0

    :try_start_f
    invoke-static {v1, v13}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    :goto_a
    sput-object v11, Lcom/uc/crashsdk/e;->w:Ljava/lang/String;

    const/4 v1, 0x1

    sput-boolean v1, Lcom/uc/crashsdk/e;->h:Z
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    :cond_8
    const-wide/16 v0, 0x8

    and-long v0, p5, v0

    cmp-long v0, v0, v8

    if-eqz v0, :cond_9

    if-nez v10, :cond_9

    :try_start_10
    invoke-virtual {v13}, Ljava/io/OutputStream;->flush()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_a

    goto :goto_b

    :catchall_a
    move-exception v0

    move-object v1, v0

    :try_start_11
    invoke-static {v1, v13}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    :goto_b
    :try_start_12
    const-string v0, "all threads dump:\n"

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v13, v0}, Lcom/uc/crashsdk/e$a;->write([B)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_b

    :goto_c
    const/4 v1, 0x1

    goto :goto_d

    :catchall_b
    move-exception v0

    :try_start_13
    invoke-static {v0, v13}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    goto :goto_c

    :goto_d
    sput-boolean v1, Lcom/uc/crashsdk/e;->v:Z
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_4

    :try_start_14
    const-string v0, "all"

    invoke-static {v13, v0, v8, v9}, Lcom/uc/crashsdk/e;->a(Lcom/uc/crashsdk/e$a;Ljava/lang/String;J)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_c

    goto :goto_e

    :catchall_c
    move-exception v0

    :try_start_15
    invoke-static {v0, v13}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    :goto_e
    sput-boolean v14, Lcom/uc/crashsdk/e;->v:Z

    :cond_9
    const-wide/16 v0, 0x10

    and-long v0, p5, v0

    cmp-long v0, v0, v8

    if-eqz v0, :cond_a

    invoke-static {v13}, Lcom/uc/crashsdk/e;->e(Ljava/io/OutputStream;)V

    :cond_a
    const-wide/16 v0, 0x2

    and-long v0, p5, v0

    cmp-long v0, v0, v8

    if-eqz v0, :cond_b

    invoke-virtual {v13}, Lcom/uc/crashsdk/e$a;->a()V

    invoke-static {v13}, Lcom/uc/crashsdk/e;->a(Lcom/uc/crashsdk/e$a;)V

    :cond_b
    if-eqz v10, :cond_c

    invoke-static {v13}, Lcom/uc/crashsdk/e;->b(Lcom/uc/crashsdk/e$a;)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_4

    :cond_c
    :goto_f
    invoke-static {v13}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    invoke-static {v12}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    goto :goto_11

    :goto_10
    :try_start_16
    invoke-static {v0, v13}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_f

    goto :goto_f

    :goto_11
    :try_start_17
    sget-object v1, Lcom/uc/crashsdk/e;->s:Ljava/util/ArrayList;

    monitor-enter v1
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_e

    :try_start_18
    sget v0, Lcom/uc/crashsdk/e;->t:I

    const/4 v2, 0x1

    add-int/2addr v0, v2

    sput v0, Lcom/uc/crashsdk/e;->t:I

    sget-object v0, Lcom/uc/crashsdk/e;->u:Ljava/lang/String;

    if-eqz v0, :cond_f

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x3

    if-le v0, v2, :cond_d

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_12

    :catchall_d
    move-exception v0

    goto :goto_14

    :cond_d
    :goto_12
    sget-boolean v0, Lcom/uc/crashsdk/b;->d:Z

    if-eqz v0, :cond_e

    sget-object v0, Lcom/uc/crashsdk/e;->u:Ljava/lang/String;

    const/16 v2, 0x7f

    invoke-static {v2, v0}, Lcom/uc/crashsdk/JNIBridge;->set(ILjava/lang/String;)J

    :cond_e
    sput-object v11, Lcom/uc/crashsdk/e;->u:Ljava/lang/String;

    :cond_f
    sget-boolean v0, Lcom/uc/crashsdk/b;->d:Z

    if-eqz v0, :cond_10

    sget v0, Lcom/uc/crashsdk/e;->t:I

    int-to-long v2, v0

    const/16 v0, 0x19

    invoke-static {v0, v2, v3}, Lcom/uc/crashsdk/JNIBridge;->set(IJ)J

    :cond_10
    monitor-exit v1

    :goto_13
    const/4 v1, 0x1

    goto :goto_15

    :goto_14
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_d

    :try_start_19
    throw v0
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_e

    :catchall_e
    move-exception v0

    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    goto :goto_13

    :goto_15
    return v1

    :catchall_f
    move-exception v0

    move-object v1, v0

    invoke-static {v13}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    invoke-static {v12}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    throw v1
.end method

.method private static a(Ljava/lang/String;Lcom/uc/crashsdk/a/e;)Z
    .locals 5

    sget-object v0, Lcom/uc/crashsdk/e;->p:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_0

    :try_start_1
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_8

    :catch_0
    move-exception p0

    :try_start_2
    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    :goto_0
    const/4 p0, 0x0

    const/4 v2, 0x0

    :try_start_3
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v4, "rw"

    invoke-direct {v3, v1, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_7

    :catch_1
    move-exception v1

    :try_start_4
    invoke-static {v1}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object v1, p0

    :goto_1
    if-eqz v1, :cond_1

    :try_start_5
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;

    move-result-object p0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception p1

    move-object p0, v1

    goto :goto_7

    :catch_2
    move-exception v3

    :try_start_6
    invoke-static {v3}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_2

    :catch_3
    move-exception p0

    goto :goto_5

    :cond_1
    :goto_2
    :try_start_7
    invoke-virtual {p1}, Lcom/uc/crashsdk/a/e;->a()Z

    move-result v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    if-eqz p0, :cond_2

    :try_start_8
    invoke-virtual {p0}, Ljava/nio/channels/FileLock;->release()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_3

    :catch_4
    move-exception p0

    :try_start_9
    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :cond_2
    :goto_3
    :try_start_a
    invoke-static {v1}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_6

    :catchall_3
    move-exception p1

    if-eqz p0, :cond_3

    :try_start_b
    invoke-virtual {p0}, Ljava/nio/channels/FileLock;->release()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    goto :goto_4

    :catch_5
    move-exception p0

    :try_start_c
    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    :cond_3
    :goto_4
    throw p1
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    :catch_6
    move-exception p1

    move-object v1, p0

    move-object p0, p1

    :goto_5
    :try_start_d
    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    goto :goto_3

    :goto_6
    :try_start_e
    monitor-exit v0

    return v2

    :goto_7
    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    throw p1

    :goto_8
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    throw p0
.end method

.method private static a(Ljava/lang/String;Lcom/uc/crashsdk/e$d;)Z
    .locals 7

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 p0, 0x40

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/File;IZ)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    :try_start_0
    const-string v1, "(\\d+)\\s+(\\d+)\\s+(\\d+)\\s+(\\d+)"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    const-wide/32 v5, 0x5265c00

    cmp-long v3, v3, v5

    if-gez v3, :cond_1

    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, p1, Lcom/uc/crashsdk/e$d;->b:J

    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p1, Lcom/uc/crashsdk/e$d;->c:I

    const/4 v3, 0x4

    invoke-virtual {p0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    iput p0, p1, Lcom/uc/crashsdk/e$d;->d:I

    iput-wide v1, p1, Lcom/uc/crashsdk/e$d;->a:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 1

    invoke-static {p1}, Lcom/uc/crashsdk/e;->o(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-static {p0, p1, v0, p2}, Lcom/uc/crashsdk/a/h;->a(Ljava/lang/String;Ljava/lang/String;ZZ)Z

    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "Custom log \'"

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' has reach max count!"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/uc/crashsdk/a/a;->b(Ljava/lang/String;)V

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static a(Ljava/lang/StringBuffer;Ljava/lang/String;JLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)Z
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuffer;",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    move-object/from16 v0, p1

    sget-object v1, Lcom/uc/crashsdk/e;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    const/4 v12, 0x0

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Processing java crash, skip generate custom log: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/uc/crashsdk/a/a;->b(Ljava/lang/String;)V

    return v12

    :cond_0
    sget-boolean v1, Lcom/uc/crashsdk/e;->ag:Z

    if-nez v1, :cond_2

    invoke-static {}, Lcom/uc/crashsdk/b;->L()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move v14, v12

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v14, 0x1

    :goto_1
    if-nez v14, :cond_3

    invoke-static {}, Lcom/uc/crashsdk/a/d;->e()Z

    move-result v1

    if-nez v1, :cond_3

    const-string v0, "DEBUG"

    invoke-static {}, Lcom/uc/crashsdk/a/d;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/uc/crashsdk/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    return v12

    :cond_3
    invoke-static/range {p1 .. p1}, Lcom/uc/crashsdk/e;->d(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "DEBUG"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "custom log sample miss: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/uc/crashsdk/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v12

    :cond_4
    invoke-static {}, Lcom/uc/crashsdk/e;->aa()Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Processing native crash, skip generate custom log: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/uc/crashsdk/a/a;->b(Ljava/lang/String;)V

    return v12

    :cond_5
    if-eqz p0, :cond_12

    if-nez v0, :cond_6

    goto/16 :goto_6

    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/uc/crashsdk/g;->X()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Lcom/uc/crashsdk/e;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const-wide/16 v1, 0x20

    and-long v1, p2, v1

    const-wide/16 v16, 0x0

    cmp-long v1, v1, v16

    if-eqz v1, :cond_7

    const/4 v11, 0x1

    goto :goto_2

    :cond_7
    move v11, v12

    :goto_2
    if-eqz v14, :cond_a

    sget-boolean v1, Lcom/uc/crashsdk/b;->d:Z

    if-eqz v1, :cond_8

    const-string v1, "custom"

    invoke-static {v15, v1, v0, v11}, Lcom/uc/crashsdk/JNIBridge;->nativeClientCreateConnection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)J

    move-result-wide v1

    goto :goto_3

    :cond_8
    move-wide/from16 v1, v16

    :goto_3
    cmp-long v3, v1, v16

    if-nez v3, :cond_9

    const-string v1, "DEBUG"

    const-string v2, "skip custom log: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/uc/crashsdk/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v12

    :cond_9
    move-wide/from16 v18, v1

    goto :goto_4

    :cond_a
    invoke-static {}, Lcom/uc/crashsdk/e;->h()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0, v11}, Lcom/uc/crashsdk/e;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_b

    return v12

    :cond_b
    invoke-static {}, Lcom/uc/crashsdk/g;->a()V

    invoke-static {v12}, Lcom/uc/crashsdk/e;->a(Z)V

    move-wide/from16 v18, v16

    :goto_4
    sget-object v20, Lcom/uc/crashsdk/e;->q:Ljava/lang/Object;

    monitor-enter v20

    move-object v1, v15

    move-wide/from16 v2, v18

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-wide/from16 v6, p2

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move v13, v11

    move-object/from16 v11, p7

    :try_start_0
    invoke-static/range {v1 .. v11}, Lcom/uc/crashsdk/e;->a(Ljava/lang/String;JLjava/lang/StringBuffer;Ljava/lang/String;JLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v1

    monitor-exit v20
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_c

    if-nez v14, :cond_c

    invoke-static {}, Lcom/uc/crashsdk/e;->h()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0, v13}, Lcom/uc/crashsdk/e;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_c
    cmp-long v2, v18, v16

    if-eqz v2, :cond_d

    invoke-static/range {v18 .. v19}, Lcom/uc/crashsdk/JNIBridge;->nativeClientCloseConnection(J)V

    :cond_d
    if-nez v1, :cond_e

    return v12

    :cond_e
    if-nez v14, :cond_f

    invoke-static {v15}, Lcom/uc/crashsdk/e;->r(Ljava/lang/String;)V

    :cond_f
    if-nez v14, :cond_10

    invoke-static {v15}, Lcom/uc/crashsdk/e;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/uc/crashsdk/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    :cond_10
    invoke-static {v15, v0}, Lcom/uc/crashsdk/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v13, :cond_11

    if-nez v14, :cond_11

    const/4 v1, 0x1

    :try_start_1
    invoke-static {v1, v12}, Lcom/uc/crashsdk/e;->a(ZZ)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception v0

    move-object v2, v0

    invoke-static {v2}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    goto :goto_5

    :cond_11
    const/4 v1, 0x1

    :goto_5
    return v1

    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v20
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_12
    :goto_6
    return v12
.end method

.method public static a(ZZ)Z
    .locals 6

    sget-boolean v0, Lcom/uc/crashsdk/e;->d:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/uc/crashsdk/b;->d:Z

    if-eqz v0, :cond_0

    invoke-static {v1, v1}, Lcom/uc/crashsdk/JNIBridge;->set(IZ)J

    :cond_0
    sput-boolean v1, Lcom/uc/crashsdk/e;->d:Z

    :cond_1
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/uc/crashsdk/e;->k()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/String;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v4, "crashsdk"

    if-eqz v3, :cond_2

    :try_start_1
    const-string p0, "CrashHandler url is empty!"

    invoke-static {v4, p0}, Lcom/uc/crashsdk/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_2
    new-instance v3, Lcom/uc/crashsdk/a/e;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    filled-new-array {v2, p1, v5}, [Ljava/lang/Object;

    move-result-object p1

    const/16 v2, 0x196

    invoke-direct {v3, v2, p1}, Lcom/uc/crashsdk/a/e;-><init>(I[Ljava/lang/Object;)V

    invoke-static {p0, v3}, Lcom/uc/crashsdk/a/f;->a(ILjava/lang/Runnable;)Z

    move-result p1

    if-eqz p1, :cond_3

    if-eqz p0, :cond_3

    sget-object p0, Lcom/uc/crashsdk/e;->o:Landroid/os/ConditionVariable;

    invoke-virtual {p0}, Landroid/os/ConditionVariable;->close()V

    const-wide/16 v2, 0xbb8

    invoke-virtual {p0, v2, v3}, Landroid/os/ConditionVariable;->block(J)Z

    move-result p0

    xor-int/2addr p0, v1

    if-eqz p0, :cond_3

    const-string p0, "timeout to wait for uploading"

    invoke-static {v4, p0}, Lcom/uc/crashsdk/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v0

    :cond_3
    return v1

    :goto_0
    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    return v0
.end method

.method private static aa()Z
    .locals 1

    sget-boolean v0, Lcom/uc/crashsdk/b;->d:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/uc/crashsdk/JNIBridge;->nativeIsCrashing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static ab()V
    .locals 16

    invoke-static {}, Lcom/uc/crashsdk/g;->Y()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    array-length v2, v1

    const/16 v3, 0x96

    if-gt v2, v3, :cond_2

    return-void

    :cond_2
    new-instance v2, Lcom/uc/crashsdk/e$b;

    const/4 v4, 0x0

    invoke-direct {v2, v4}, Lcom/uc/crashsdk/e$b;-><init>(B)V

    invoke-static {v1, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    array-length v2, v1

    sub-int/2addr v2, v3

    if-gez v2, :cond_3

    move v2, v4

    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    move v3, v4

    move v7, v3

    move v8, v7

    :goto_0
    array-length v9, v1

    if-ge v3, v9, :cond_6

    aget-object v9, v1, v3

    const/4 v10, 0x1

    if-ge v3, v2, :cond_4

    move v11, v10

    goto :goto_1

    :cond_4
    move v11, v4

    :goto_1
    if-nez v11, :cond_5

    invoke-virtual {v9}, Ljava/io/File;->lastModified()J

    move-result-wide v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-long v12, v5, v12

    const-wide/32 v14, 0x19bfcc00

    cmp-long v12, v12, v14

    if-ltz v12, :cond_5

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_4

    :cond_5
    if-eqz v11, :cond_6

    :goto_2
    :try_start_1
    invoke-virtual {v9}, Ljava/io/File;->delete()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    add-int/lit8 v7, v7, 0x1

    move v8, v4

    goto :goto_3

    :catchall_1
    move-exception v9

    add-int/2addr v8, v10

    :try_start_2
    invoke-static {v9}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    :goto_3
    const/4 v9, 0x3

    if-ge v8, v9, :cond_6

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Removed "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " logs in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/uc/crashsdk/a/a;->a(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :goto_4
    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static b(Ljava/io/OutputStream;Ljava/lang/String;I)I
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v4, "UTF-8"

    if-eqz v3, :cond_7

    :try_start_1
    invoke-static {}, Lcom/uc/crashsdk/e;->R()[B

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "(alloc buffer failed!)\n"

    invoke-virtual {p1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    return v1

    :catchall_0
    move-exception p1

    goto/16 :goto_6

    :cond_0
    :try_start_2
    new-instance v3, Ljava/io/DataInputStream;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v0, v1

    move v2, v0

    move v5, v2

    :cond_1
    :goto_0
    :try_start_3
    invoke-virtual {v3, p1}, Ljava/io/DataInputStream;->read([B)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_6

    add-int/2addr v0, v6

    sub-int v7, p2, v2

    add-int/lit8 v8, v7, 0x20

    if-le v6, v8, :cond_2

    goto :goto_1

    :cond_2
    move v7, v6

    :goto_1
    if-lez v7, :cond_3

    if-nez v5, :cond_3

    invoke-virtual {p0, p1, v1, v7}, Ljava/io/OutputStream;->write([BII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    add-int/2addr v2, v7

    goto :goto_2

    :catchall_1
    move-exception p1

    move v1, v2

    move-object v0, v3

    goto :goto_6

    :cond_3
    :goto_2
    if-nez v5, :cond_1

    if-lt v7, v6, :cond_5

    if-lt v2, p2, :cond_4

    goto :goto_3

    :cond_4
    move v5, v1

    goto :goto_0

    :cond_5
    :goto_3
    const/4 v5, 0x1

    goto :goto_0

    :cond_6
    move p1, v0

    move v1, v2

    move-object v0, v3

    goto :goto_4

    :cond_7
    :try_start_4
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, "file: \'"

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' not exists!\n"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V

    move p1, v1

    :goto_4
    if-lez v1, :cond_8

    const-string p2, "\n"

    invoke-virtual {p2, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/io/OutputStream;->write([B)V

    :cond_8
    if-ge v1, p1, :cond_9

    sget-object p2, Ljava/util/Locale;->US:Ljava/util/Locale;

    sub-int/2addr p1, v1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(truncated "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " bytes)\n"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_9
    :goto_5
    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    goto :goto_7

    :goto_6
    :try_start_5
    invoke-static {p1, p0}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_5

    :goto_7
    invoke-static {p0}, Lcom/uc/crashsdk/e;->a(Ljava/io/OutputStream;)V

    return v1

    :catchall_2
    move-exception p0

    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    throw p0
.end method

.method public static b()J
    .locals 4

    sget-wide v0, Lcom/uc/crashsdk/e;->g:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-string v0, "local"

    invoke-static {v0}, Lcom/uc/crashsdk/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/uc/crashsdk/e;->h(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lcom/uc/crashsdk/e;->g:J

    :cond_0
    sget-wide v0, Lcom/uc/crashsdk/e;->g:J

    return-wide v0
.end method

.method private static b(Ljava/lang/String;ZZ)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-static {p0}, Lcom/uc/crashsdk/e;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    if-eqz p2, :cond_1

    :try_start_1
    invoke-static {p0}, Lcom/uc/crashsdk/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    invoke-static {p1}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    return-object p0
.end method

.method public static b(I)V
    .locals 3

    new-instance v0, Lcom/uc/crashsdk/a/e;

    const/16 v1, 0x19a

    invoke-direct {v0, v1}, Lcom/uc/crashsdk/a/e;-><init>(I)V

    mul-int/lit16 p0, p0, 0x3e8

    int-to-long v1, p0

    const/4 p0, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/uc/crashsdk/a/f;->a(ILjava/lang/Runnable;J)Z

    return-void
.end method

.method public static b(Landroid/content/Context;)V
    .locals 5

    invoke-static {}, Lcom/uc/crashsdk/g;->M()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.BATTERY_OKAY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v1, Lcom/uc/crashsdk/e;->Q:Lcom/uc/crashsdk/e$c;

    const/4 v2, 0x1

    invoke-static {v2}, Lcom/uc/crashsdk/a/f;->a(I)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v0, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    sput-boolean v2, Lcom/uc/crashsdk/e;->R:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method private static b(Lcom/uc/crashsdk/e$a;)V
    .locals 2

    const/4 v0, 0x0

    sput-boolean v0, Lcom/uc/crashsdk/e;->h:Z

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LOG_END"

    invoke-static {v1}, Lcom/uc/crashsdk/e;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/uc/crashsdk/e$a;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    :goto_0
    const/4 p0, 0x1

    sput-boolean p0, Lcom/uc/crashsdk/e;->h:Z

    return-void
.end method

.method private static b(Ljava/io/OutputStream;)V
    .locals 15

    const-string v0, "UTF-8"

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "logcat:\n"

    invoke-virtual {v3, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/OutputStream;->write([B)V

    invoke-static {}, Lcom/uc/crashsdk/g;->n()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-gtz v3, :cond_0

    :try_start_1
    const-string v3, "[DEBUG] custom java logcat lines count is 0!\n"

    invoke-virtual {v3, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    invoke-static {v0, p0}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    :goto_0
    invoke-static {p0}, Lcom/uc/crashsdk/e;->a(Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v2}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    return-void

    :catchall_1
    move-exception v0

    goto/16 :goto_5

    :cond_0
    :try_start_3
    invoke-static {}, Lcom/uc/crashsdk/g;->n()I

    move-result v3

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    const-string v5, "logcat"

    const-string v6, "-d"

    const-string v7, "-b"

    const-string v8, "events"

    const-string v9, "-b"

    const-string v10, "main"

    const-string v11, "-v"

    const-string v12, "threadtime"

    const-string v13, "-t"

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    filled-new-array/range {v5 .. v14}, [Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v4

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-virtual {v4}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-static {v5}, Lcom/uc/crashsdk/e;->a(Ljava/io/InputStreamReader;)Ljava/io/BufferedReader;

    move-result-object v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-nez v2, :cond_1

    :try_start_4
    const-string v3, "[DEBUG] alloc buffer failed!\n"

    invoke-virtual {v3, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v0

    :try_start_5
    invoke-static {v0, p0}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    :goto_1
    invoke-static {p0}, Lcom/uc/crashsdk/e;->a(Ljava/io/OutputStream;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    invoke-static {v2}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    return-void

    :cond_1
    const/4 v4, 0x0

    :try_start_6
    sput-boolean v4, Lcom/uc/crashsdk/e;->h:Z

    move v5, v4

    :cond_2
    :goto_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    add-int/lit8 v4, v4, 0x1

    if-ge v5, v3, :cond_2

    const-string v7, " I auditd "

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, " I liblog "

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v6, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {p0, v6}, Ljava/io/OutputStream;->write([B)V

    const-string v6, "\n"

    invoke-virtual {v6, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {p0, v6}, Ljava/io/OutputStream;->write([B)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_3
    :try_start_7
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[DEBUG] Read "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " lines, wrote "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " lines.\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception v0

    :try_start_8
    invoke-static {v0, p0}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    :goto_3
    sput-boolean v1, Lcom/uc/crashsdk/e;->h:Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :goto_4
    invoke-static {v2}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    goto :goto_6

    :goto_5
    :try_start_9
    sput-boolean v1, Lcom/uc/crashsdk/e;->h:Z

    invoke-static {v0, p0}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    goto :goto_4

    :goto_6
    invoke-static {p0}, Lcom/uc/crashsdk/e;->a(Ljava/io/OutputStream;)V

    return-void

    :catchall_4
    move-exception p0

    invoke-static {v2}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    throw p0
.end method

.method private static b(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)V
    .locals 18

    move-object/from16 v1, p0

    const-string v2, "\n"

    const-string v3, "\'\n"

    const-string v4, "UTF-8"

    const-string v5, "UUID: "

    const-string v6, "/target: release\'\n"

    const-string v7, "/javaseq: 211215141717/arch: "

    const-string v8, "CrashSDK Information: \'version: 3.3.2.2/nativeseq: "

    const-string v9, "Application Information: \'version: "

    const-string v10, "Runtime Information: \'start: "

    const-string v11, "Mobile Information: \'model: "

    const-string v12, "Cpu Information: \'abi: "

    const-string v13, "Basic Information: \'pid: "

    :try_start_0
    const-string v0, "*** *** *** *** *** *** *** *** *** *** *** *** *** *** *** ***\n"

    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v0, v1}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    :goto_0
    :try_start_1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v14

    invoke-static {}, Lcom/uc/crashsdk/e;->n()Ljava/lang/String;

    move-result-object v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object/from16 v16, v5

    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "/tid: "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "/time: "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    invoke-static {}, Lcom/uc/crashsdk/e;->e()Ljava/lang/String;

    move-result-object v0

    sget-object v5, Lcom/uc/crashsdk/e;->l:Ljava/lang/String;

    invoke-static {v5}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/uc/crashsdk/e;->T()V

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_2

    :cond_0
    :goto_1
    sget-object v5, Lcom/uc/crashsdk/e;->l:Ljava/lang/String;

    invoke-static {}, Lcom/uc/crashsdk/e;->f()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/processor: "

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/hardware: "

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object/from16 v16, v5

    :goto_2
    invoke-static {v0, v1}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    :goto_3
    :try_start_3
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v5, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/version: "

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/sdk: "

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "Build fingerprint: \'"

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    new-instance v0, Ljava/util/Date;

    sget-wide v11, Lcom/uc/crashsdk/e;->b:J

    invoke-direct {v0, v11, v12}, Ljava/util/Date;-><init>(J)V

    invoke-static {v0}, Lcom/uc/crashsdk/e;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v11

    invoke-static {}, Lcom/uc/crashsdk/a/g;->d()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/uc/crashsdk/b;->B()Z

    move-result v13

    if-eqz v13, :cond_1

    const-string v13, "fg"

    goto :goto_4

    :catchall_3
    move-exception v0

    goto :goto_5

    :cond_1
    const-string v13, "bg"

    :goto_4
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/maxheap: "

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "/primaryabi: "

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/ground: "

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_6

    :goto_5
    invoke-static {v0, v1}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    :goto_6
    const/4 v5, 0x1

    :try_start_4
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {}, Lcom/uc/crashsdk/g;->T()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/uc/crashsdk/g;->U()Ljava/lang/String;

    move-result-object v10

    invoke-static {}, Lcom/uc/crashsdk/g;->V()Ljava/lang/String;

    move-result-object v11

    invoke-static {}, Lcom/uc/crashsdk/a;->c()I

    move-result v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/subversion: "

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/buildseq: "

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/versioncode: "

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    const-string v0, "0"

    sget-boolean v3, Lcom/uc/crashsdk/b;->d:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    const-string v9, ""

    if-eqz v3, :cond_2

    const/4 v0, 0x0

    const-wide/16 v10, 0x0

    :try_start_5
    invoke-static {v5, v10, v11, v0}, Lcom/uc/crashsdk/JNIBridge;->nativeGet(IJLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v12, 0x2

    invoke-static {v12, v10, v11, v0}, Lcom/uc/crashsdk/JNIBridge;->nativeGet(IJLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v17, v3

    move-object v3, v0

    move-object/from16 v0, v17

    goto :goto_7

    :catchall_4
    move-exception v0

    goto :goto_9

    :cond_2
    move-object v3, v9

    :goto_7
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    if-nez p1, :cond_3

    goto :goto_8

    :cond_3
    move-object/from16 v9, p1

    :goto_8
    const/16 v0, 0x2f

    invoke-virtual {v9, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/2addr v0, v5

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "Report Name: "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    goto :goto_a

    :goto_9
    invoke-static {v0, v1}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    :goto_a
    :try_start_6
    sget-boolean v0, Lcom/uc/crashsdk/e;->ag:Z

    if-eqz v0, :cond_4

    const-string v0, "UUID"

    invoke-static {v0}, Lcom/uc/crashsdk/e;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    :catchall_5
    move-exception v0

    goto :goto_c

    :cond_4
    sget-object v0, Lcom/uc/crashsdk/e;->B:Ljava/lang/String;

    :goto_b
    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v6, v16

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Log Type: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v3, p2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    goto :goto_d

    :goto_c
    invoke-static {v0, v1}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    :goto_d
    :try_start_7
    invoke-static {}, Lcom/uc/crashsdk/b;->E()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v0, "(none)"

    goto :goto_e

    :catchall_6
    move-exception v0

    goto :goto_f

    :cond_5
    :goto_e
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "Activity: "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    goto :goto_10

    :goto_f
    invoke-static {v0, v1}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    :goto_10
    invoke-static/range {p0 .. p0}, Lcom/uc/crashsdk/e;->a(Ljava/io/OutputStream;)V

    :try_start_8
    invoke-static {v1, v4}, Lcom/uc/crashsdk/a;->a(Ljava/io/OutputStream;Ljava/lang/String;)V

    sget-boolean v0, Lcom/uc/crashsdk/e;->ag:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    sput-boolean v0, Lcom/uc/crashsdk/e;->h:Z

    const-string v0, "HEADER"

    invoke-static {v0}, Lcom/uc/crashsdk/e;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    sput-boolean v5, Lcom/uc/crashsdk/e;->h:Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_7

    goto :goto_11

    :catchall_7
    move-exception v0

    invoke-static {v0, v1}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    :cond_6
    :goto_11
    invoke-static/range {p0 .. p0}, Lcom/uc/crashsdk/e;->a(Ljava/io/OutputStream;)V

    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/uc/crashsdk/e;->y:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lcom/uc/crashsdk/e;->x:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/uc/crashsdk/b;->i()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/uc/crashsdk/a/b;->a(Ljava/lang/String;Ljava/lang/String;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/uc/crashsdk/e;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/uc/crashsdk/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/uc/crashsdk/a/h;->a(Ljava/lang/String;Ljava/lang/String;ZZ)Z

    return-void
.end method

.method public static b(Z)V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/uc/crashsdk/g;->r()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/uc/crashsdk/b;->F()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/uc/crashsdk/e;->d:Z

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    move v0, v2

    :goto_0
    if-nez v0, :cond_1

    invoke-static {}, Lcom/uc/crashsdk/g;->s()Z

    move-result v0

    :cond_1
    if-nez v0, :cond_2

    return-void

    :cond_2
    if-eqz p0, :cond_4

    invoke-static {}, Lcom/uc/crashsdk/e;->k()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/uc/crashsdk/e;->j()V

    invoke-static {p0, v2, v2}, Lcom/uc/crashsdk/e;->a(Ljava/lang/String;ZZ)V

    :cond_3
    return-void

    :cond_4
    invoke-static {v1, v2}, Lcom/uc/crashsdk/e;->a(ZZ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :goto_1
    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static b(I[Ljava/lang/Object;)Z
    .locals 6

    const/16 v0, 0x1c3

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p0, v0, :cond_4

    const/16 v0, 0x1c4

    if-eq p0, v0, :cond_1

    sget-boolean p0, Lcom/uc/crashsdk/e;->a:Z

    if-eqz p0, :cond_0

    return v2

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    sget-boolean p0, Lcom/uc/crashsdk/e;->a:Z

    if-nez p0, :cond_3

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_3
    :goto_0
    aget-object p0, p1, v2

    check-cast p0, Ljava/lang/String;

    aget-object p1, p1, v1

    check-cast p1, Lcom/uc/crashsdk/e$d;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-wide v0, p1, Lcom/uc/crashsdk/e$d;->a:J

    iget-wide v2, p1, Lcom/uc/crashsdk/e$d;->b:J

    iget v4, p1, Lcom/uc/crashsdk/e$d;->c:I

    iget p1, p1, Lcom/uc/crashsdk/e$d;->d:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {v0, p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/File;[B)Z

    move-result p0

    return p0

    :cond_4
    sget-boolean p0, Lcom/uc/crashsdk/e;->a:Z

    if-nez p0, :cond_6

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_5
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_6
    :goto_1
    aget-object p0, p1, v2

    check-cast p0, Ljava/lang/String;

    aget-object p1, p1, v1

    check-cast p1, Lcom/uc/crashsdk/e$d;

    invoke-static {p0, p1}, Lcom/uc/crashsdk/e;->a(Ljava/lang/String;Lcom/uc/crashsdk/e$d;)Z

    move-result p0

    return p0
.end method

.method private static b(Ljava/io/File;)Z
    .locals 4

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x5f

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    return v1

    :cond_0
    const/16 v2, 0x2e

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    if-gtz v2, :cond_1

    return v1

    :cond_1
    const/4 v3, 0x1

    add-int/2addr v0, v3

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string v0, "java"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "ucebujava"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "jni"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "ucebujni"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "unexp"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "anr"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    return v1

    :cond_3
    :goto_0
    return v3
.end method

.method public static synthetic c(I)I
    .locals 0

    sput p0, Lcom/uc/crashsdk/e;->C:I

    return p0
.end method

.method public static c()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/uc/crashsdk/e;->i:Ljava/lang/String;

    return-void
.end method

.method private static c(Ljava/io/OutputStream;)V
    .locals 7

    const-string v0, "UTF-8"

    const-string v1, "opened file count: "

    sget-boolean v2, Lcom/uc/crashsdk/b;->d:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/uc/crashsdk/b;->o()Ljava/lang/String;

    move-result-object v0

    sput-boolean v3, Lcom/uc/crashsdk/e;->h:Z

    const/16 v1, 0x11

    invoke-static {v1, v0}, Lcom/uc/crashsdk/JNIBridge;->cmd(ILjava/lang/String;)J

    move-result-wide v1

    const-wide/16 v3, 0x1

    cmp-long v1, v3, v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-static {v1}, Lcom/uc/crashsdk/a/g;->e(Ljava/io/File;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v0, p0}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    invoke-static {v0, p0}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    :goto_1
    sput-boolean v2, Lcom/uc/crashsdk/e;->h:Z

    invoke-static {p0}, Lcom/uc/crashsdk/e;->a(Ljava/io/OutputStream;)V

    :cond_1
    sput-boolean v2, Lcom/uc/crashsdk/e;->h:Z

    return-void

    :cond_2
    const/4 v2, 0x0

    :try_start_2
    invoke-static {}, Lcom/uc/crashsdk/g;->J()I

    move-result v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :try_start_3
    new-instance v5, Ljava/io/File;

    const-string v6, "/proc/self/fd"

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_3

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    array-length v5, v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", write limit: "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ".\n"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write([B)V

    goto :goto_3

    :catchall_2
    move-exception v1

    goto :goto_2

    :cond_3
    const-string v1, "[DEBUG] listFiles failed!\n"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write([B)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_3

    :catchall_3
    move-exception v1

    const/16 v4, 0x384

    :goto_2
    invoke-static {v1, p0}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    :goto_3
    if-eqz v2, :cond_5

    :try_start_4
    array-length v1, v2

    if-lt v1, v4, :cond_5

    const-string v1, "opened files:\n"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write([B)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    :try_start_5
    array-length v4, v2

    :goto_4
    if-ge v3, v4, :cond_4

    aget-object v5, v2, v3

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " -> "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\n"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :catchall_4
    move-exception v2

    :try_start_6
    invoke-static {v2, p0}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    goto :goto_5

    :catchall_5
    move-exception v0

    invoke-static {v0, p0}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    :cond_5
    :goto_5
    invoke-static {p0}, Lcom/uc/crashsdk/e;->a(Ljava/io/OutputStream;)V

    return-void
.end method

.method public static c(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/uc/crashsdk/e;->z:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/uc/crashsdk/b;->l()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/uc/crashsdk/a/b;->a(Ljava/lang/String;Ljava/lang/String;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static c(Z)V
    .locals 3

    sget-boolean v0, Lcom/uc/crashsdk/e;->R:Z

    if-eqz v0, :cond_0

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/uc/crashsdk/g;->M()Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_0
    if-eqz p0, :cond_3

    invoke-static {}, Lcom/uc/crashsdk/g;->M()Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_1
    :goto_0
    sget-object p0, Lcom/uc/crashsdk/e;->S:Lcom/uc/crashsdk/a/e;

    invoke-static {p0}, Lcom/uc/crashsdk/a/f;->b(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Lcom/uc/crashsdk/a/f;->a(Ljava/lang/Runnable;)V

    :cond_2
    const/4 v0, 0x0

    const-wide/16 v1, 0xbb8

    invoke-static {v0, p0, v1, v2}, Lcom/uc/crashsdk/a/f;->a(ILjava/lang/Runnable;J)Z

    :cond_3
    return-void
.end method

.method public static synthetic c(Landroid/content/Context;)Z
    .locals 0

    invoke-static {p0}, Lcom/uc/crashsdk/e;->d(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static synthetic d(I)I
    .locals 0

    sput p0, Lcom/uc/crashsdk/e;->D:I

    return p0
.end method

.method public static d()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/uc/crashsdk/e;->i:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/uc/crashsdk/e;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/uc/crashsdk/e;->i:Ljava/lang/String;

    return-object v0
.end method

.method private static d(Ljava/io/OutputStream;)V
    .locals 9

    const-string v0, "UTF-8"

    const-string v1, "threads count: "

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    invoke-static {}, Lcom/uc/crashsdk/g;->K()I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v5, Ljava/io/File;

    const-string v6, "/proc/self/task"

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    array-length v5, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ge v5, v4, :cond_1

    return-void

    :catchall_0
    move-exception v5

    goto :goto_0

    :catchall_1
    move-exception v5

    const/16 v4, 0x12c

    :goto_0
    invoke-static {v5}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    move v5, v3

    :cond_1
    if-nez v2, :cond_2

    return-void

    :cond_2
    :try_start_2
    const-string v6, "threads info:\n"

    invoke-virtual {v6, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {p0, v6}, Ljava/io/OutputStream;->write([B)V

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", dump limit: "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ".\n"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write([B)V

    const-string v1, " tid     name\n"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write([B)V

    array-length v1, v2

    move v4, v3

    :goto_1
    if-ge v4, v1, :cond_3

    aget-object v5, v2, v4

    new-instance v6, Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    const-string v8, "comm"

    invoke-direct {v6, v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v7, 0x80

    invoke-static {v6, v7, v3}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/File;IZ)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/uc/crashsdk/e;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v8, "%5s %s\n"

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    filled-new-array {v5, v6}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v7, v8, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/io/OutputStream;->write([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :catchall_2
    move-exception v0

    invoke-static {v0, p0}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    :cond_3
    invoke-static {p0}, Lcom/uc/crashsdk/e;->a(Ljava/io/OutputStream;)V

    return-void
.end method

.method public static d(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/uc/crashsdk/f;->d(Z)V

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/uc/crashsdk/b;->c()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/uc/crashsdk/f;->a(Ljava/lang/String;Z)Z

    invoke-static {}, Lcom/uc/crashsdk/a/h;->i()V

    return-void

    :cond_0
    invoke-static {}, Lcom/uc/crashsdk/f;->a()I

    invoke-static {}, Lcom/uc/crashsdk/a/h;->i()V

    return-void
.end method

.method private static d(Landroid/content/Context;)Z
    .locals 4

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getProcessesInErrorState()Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_1

    return v0

    :cond_1
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$ProcessErrorStateInfo;

    iget v3, v1, Landroid/app/ActivityManager$ProcessErrorStateInfo;->pid:I

    if-ne v3, v0, :cond_2

    sput-boolean v2, Lcom/uc/crashsdk/e;->O:Z

    invoke-static {}, Lcom/uc/crashsdk/e;->O()Z

    move-result p0

    if-eqz p0, :cond_3

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "ANR occurred in process: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v1, Landroid/app/ActivityManager$ProcessErrorStateInfo;->processName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "crashsdk"

    invoke-static {v0, p0}, Lcom/uc/crashsdk/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    sget-boolean p0, Lcom/uc/crashsdk/b;->d:Z

    if-eqz p0, :cond_5

    const/16 p0, 0x82

    iget-object v0, v1, Landroid/app/ActivityManager$ProcessErrorStateInfo;->longMsg:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/uc/crashsdk/JNIBridge;->set(ILjava/lang/String;)J

    goto :goto_0

    :cond_4
    sget-boolean p0, Lcom/uc/crashsdk/b;->d:Z

    if-eqz p0, :cond_5

    invoke-static {}, Lcom/uc/crashsdk/e;->W()V

    :cond_5
    :goto_0
    return v2
.end method

.method public static d(Ljava/lang/String;)Z
    .locals 2

    sget-boolean v0, Lcom/uc/crashsdk/e;->ag:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/uc/crashsdk/e;->p(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    return v1
.end method

.method public static synthetic e(I)I
    .locals 0

    sput p0, Lcom/uc/crashsdk/e;->E:I

    return p0
.end method

.method public static e(Z)I
    .locals 0

    invoke-static {p0}, Lcom/uc/crashsdk/f;->a(Z)I

    move-result p0

    return p0
.end method

.method public static e()Ljava/lang/String;
    .locals 11

    const-class v0, Ljava/lang/String;

    const-string v1, ","

    sget-object v2, Lcom/uc/crashsdk/e;->j:Ljava/lang/String;

    invoke-static {v2}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v0, Lcom/uc/crashsdk/e;->j:Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_0
    const-class v4, Landroid/os/Build;

    const-string v5, "SUPPORTED_ABIS"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v4, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_3

    instance-of v5, v4, [Ljava/lang/String;

    if-eqz v5, :cond_3

    check-cast v4, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    array-length v6, v4

    const/4 v7, 0x0

    move v9, v2

    move v8, v7

    :goto_0
    if-ge v8, v6, :cond_2

    aget-object v10, v4, v8

    if-nez v9, :cond_1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, 0x1

    move v9, v7

    goto :goto_0

    :cond_2
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/uc/crashsdk/e;->j:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_3
    sget-object v4, Lcom/uc/crashsdk/e;->j:Ljava/lang/String;

    invoke-static {v4}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    :try_start_1
    sget-object v4, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    sget-object v5, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catchall_1
    move-object v4, v3

    :catchall_2
    move-object v5, v3

    :goto_1
    invoke-static {v4}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/String;)Z

    move-result v6

    xor-int/2addr v6, v2

    if-eqz v6, :cond_4

    sput-object v4, Lcom/uc/crashsdk/e;->j:Ljava/lang/String;

    :cond_4
    invoke-static {v5}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    if-eqz v6, :cond_5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/uc/crashsdk/e;->j:Ljava/lang/String;

    invoke-static {v4, v6, v1}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/uc/crashsdk/e;->j:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/uc/crashsdk/e;->j:Ljava/lang/String;

    invoke-static {v4, v6, v5}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/uc/crashsdk/e;->j:Ljava/lang/String;

    goto :goto_2

    :cond_5
    sput-object v5, Lcom/uc/crashsdk/e;->j:Ljava/lang/String;

    :cond_6
    :goto_2
    :try_start_3
    const-string v4, "android.os.SystemProperties"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const-string v5, "get"

    filled-new-array {v0, v0}, [Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    const-string v2, "ro.product.cpu.abi"

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    :try_start_4
    const-string v4, "ro.product.cpu.abi2"

    filled-new-array {v4, v3}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception v0

    goto :goto_3

    :catchall_4
    move-exception v0

    move-object v2, v3

    goto :goto_3

    :cond_7
    move-object v0, v3

    goto :goto_5

    :goto_3
    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    move-object v0, v3

    :goto_4
    move-object v3, v2

    :goto_5
    :try_start_5
    invoke-static {v3}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    sget-object v2, Lcom/uc/crashsdk/e;->j:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/uc/crashsdk/e;->j:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/uc/crashsdk/e;->j:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/uc/crashsdk/e;->j:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/uc/crashsdk/e;->j:Ljava/lang/String;

    goto :goto_6

    :catchall_5
    move-exception v0

    goto :goto_7

    :cond_8
    :goto_6
    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    sget-object v2, Lcom/uc/crashsdk/e;->j:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/uc/crashsdk/e;->j:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/uc/crashsdk/e;->j:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/uc/crashsdk/e;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/uc/crashsdk/e;->j:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    goto :goto_8

    :goto_7
    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    :cond_9
    :goto_8
    sget-object v0, Lcom/uc/crashsdk/e;->j:Ljava/lang/String;

    return-object v0
.end method

.method private static e(Ljava/io/OutputStream;)V
    .locals 10

    const-string v0, "UTF-8"

    sget-boolean v1, Lcom/uc/crashsdk/b;->d:Z

    if-nez v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    const-string v1, "solib build id:\n"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-static {v1, p0}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    :goto_0
    const/4 v1, 0x0

    :try_start_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/io/FileReader;

    new-instance v4, Ljava/io/File;

    const-string v5, "/proc/self/maps"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    :try_start_2
    new-instance v4, Ljava/io/BufferedReader;

    const/16 v5, 0x200

    invoke-direct {v4, v3, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :cond_1
    :goto_1
    :try_start_3
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    const-string v5, ".so"

    invoke-virtual {v1, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/16 v5, 0x2f

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v5, "/data/"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    sget-object v5, Lcom/uc/crashsdk/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_3

    :catchall_1
    move-exception v0

    :goto_2
    move-object v1, v3

    goto/16 :goto_5

    :cond_2
    :goto_3
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-boolean v5, Lcom/uc/crashsdk/e;->ag:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const-string v6, "\n"

    if-eqz v5, :cond_3

    :try_start_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SOBUILDID"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "$^"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "`"

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "^$"

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write([B)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v1

    :try_start_5
    invoke-static {v1, p0}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    goto :goto_1

    :cond_3
    const/4 v5, 0x3

    const-wide/16 v7, 0x0

    invoke-static {v5, v7, v8, v1}, Lcom/uc/crashsdk/JNIBridge;->nativeGet(IJLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write([B)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto/16 :goto_1

    :cond_4
    invoke-static {v3}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    :goto_4
    invoke-static {v4}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    goto :goto_6

    :catchall_3
    move-exception v0

    move-object v4, v1

    goto/16 :goto_2

    :catchall_4
    move-exception v0

    move-object v4, v1

    :goto_5
    :try_start_6
    invoke-static {v0, p0}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    invoke-static {v1}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    goto :goto_4

    :goto_6
    invoke-static {p0}, Lcom/uc/crashsdk/e;->a(Ljava/io/OutputStream;)V

    return-void

    :catchall_5
    move-exception p0

    invoke-static {v1}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    invoke-static {v4}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    throw p0
.end method

.method public static e(Ljava/lang/String;)Z
    .locals 2

    :try_start_0
    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "lib"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ".so"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    sub-int/2addr v0, v1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic f(I)I
    .locals 0

    sput p0, Lcom/uc/crashsdk/e;->F:I

    return p0
.end method

.method public static f(Z)I
    .locals 1

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/uc/crashsdk/b;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/uc/crashsdk/f;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/uc/crashsdk/f;->b()I

    move-result v0

    :goto_0
    invoke-static {p0}, Lcom/uc/crashsdk/f;->b(Z)I

    move-result p0

    if-le p0, v0, :cond_2

    return p0

    :cond_2
    return v0
.end method

.method public static f()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/uc/crashsdk/e;->k:Ljava/lang/String;

    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/uc/crashsdk/e;->T()V

    :cond_0
    sget-object v0, Lcom/uc/crashsdk/e;->k:Ljava/lang/String;

    return-object v0
.end method

.method public static f(Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/uc/crashsdk/e;->a([Ljava/lang/StackTraceElement;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    return-object p0
.end method

.method private static f(Ljava/io/OutputStream;)V
    .locals 5

    const-string v0, "generated "

    const-string v1, "generating log: "

    const-string v2, "last version: \'"

    :try_start_0
    const-string v3, "recent status:\n"

    const-string v4, "UTF-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    invoke-static {v3, p0}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    :goto_0
    :try_start_1
    sget-boolean v3, Lcom/uc/crashsdk/e;->ag:Z

    if-eqz v3, :cond_0

    const-string v3, "LASTVER"

    invoke-static {v3}, Lcom/uc/crashsdk/e;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :catchall_1
    move-exception v2

    goto :goto_2

    :cond_0
    invoke-static {}, Lcom/uc/crashsdk/a;->m()Ljava/lang/String;

    move-result-object v3

    :goto_1
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'\n"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :goto_2
    invoke-static {v2, p0}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    :goto_3
    :try_start_2
    sget-object v2, Lcom/uc/crashsdk/e;->s:Ljava/util/ArrayList;

    monitor-enter v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :try_start_3
    sget-object v3, Lcom/uc/crashsdk/e;->u:Ljava/lang/String;

    if-eqz v3, :cond_1

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    sget-object v3, Lcom/uc/crashsdk/e;->u:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "UTF-8"

    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write([B)V

    goto :goto_4

    :catchall_2
    move-exception v0

    goto/16 :goto_6

    :cond_1
    :goto_4
    sget v1, Lcom/uc/crashsdk/e;->t:I

    if-gtz v1, :cond_2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    :cond_2
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    sget v1, Lcom/uc/crashsdk/e;->t:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " logs, recent are:\n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "* "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "UTF-8"

    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write([B)V

    goto :goto_5

    :cond_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    sget-boolean v0, Lcom/uc/crashsdk/e;->v:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dumping all threads: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    sget-object v0, Lcom/uc/crashsdk/e;->w:Ljava/lang/String;

    if-eqz v0, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dumping threads: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_8

    :catchall_3
    move-exception v0

    goto :goto_7

    :goto_6
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :goto_7
    invoke-static {v0, p0}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    :cond_4
    :goto_8
    invoke-static {p0}, Lcom/uc/crashsdk/e;->a(Ljava/io/OutputStream;)V

    return-void
.end method

.method public static synthetic g(I)I
    .locals 0

    sput p0, Lcom/uc/crashsdk/e;->G:I

    return p0
.end method

.method public static g()Ljava/lang/String;
    .locals 12

    const-string v0, " kB\n"

    const-string v1, " kB\nNativeFree: "

    const-string v2, " kB\nNativeAllocated: "

    const-string v3, " kB\nNativeHeap: "

    const-string v4, " kB\nJavaFree:   "

    const-string v5, " kB\nJavaTotal:  "

    const-string v6, "JavaMax:    "

    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v8

    const-wide/16 v10, 0x400

    div-long/2addr v8, v10

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v5

    div-long/2addr v5, v10

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v4

    div-long/2addr v4, v10

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Debug;->getNativeHeapSize()J

    move-result-wide v3

    div-long/2addr v3, v10

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Debug;->getNativeHeapAllocatedSize()J

    move-result-wide v2

    div-long/2addr v2, v10

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Debug;->getNativeHeapFreeSize()J

    move-result-wide v1

    div-long/2addr v1, v10

    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Lcom/uc/crashsdk/a/g;->a()Landroid/content/Context;

    move-result-object v1

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    if-eqz v1, :cond_0

    new-instance v2, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v2}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    invoke-virtual {v1, v2}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    const-string v1, "availMem:   "

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v2, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    div-long/2addr v3, v10

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "threshold:  "

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v2, Landroid/app/ActivityManager$MemoryInfo;->threshold:J

    div-long/2addr v3, v10

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "lowMemory:  "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, v2, Landroid/app/ActivityManager$MemoryInfo;->lowMemory:Z

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-object v0

    :catchall_1
    move-exception v0

    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    const-string v0, ""

    return-object v0
.end method

.method public static synthetic g(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcom/uc/crashsdk/e;->J:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic g(Z)Z
    .locals 0

    sput-boolean p0, Lcom/uc/crashsdk/e;->K:Z

    return p0
.end method

.method public static synthetic h(I)I
    .locals 0

    sput p0, Lcom/uc/crashsdk/e;->H:I

    return p0
.end method

.method private static h(Ljava/lang/String;)J
    .locals 6

    const-wide/16 v0, 0x0

    :try_start_0
    const-string v2, "android.os.SystemProperties"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getLong"

    const-class v4, Ljava/lang/String;

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    filled-new-array {v4, v5}, [Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    filled-new-array {p0, v3}, [Ljava/lang/Object;

    move-result-object p0

    const/4 v3, 0x0

    invoke-virtual {v2, v3, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide v0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    :cond_0
    return-wide v0
.end method

.method public static h()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/uc/crashsdk/e;->m:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Lcom/uc/crashsdk/e;->a(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/uc/crashsdk/e;->m:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic i(I)I
    .locals 0

    sput p0, Lcom/uc/crashsdk/e;->I:I

    return p0
.end method

.method private static i(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    :try_start_0
    const-string v0, "[^0-9a-zA-Z-.]"

    const-string v1, "-"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const-string p0, "unknown"

    :goto_0
    return-object p0
.end method

.method public static i()Z
    .locals 1

    sget-boolean v0, Lcom/uc/crashsdk/e;->d:Z

    return v0
.end method

.method private static j(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    if-nez p0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroidx/constraintlayout/core/SolverVariable$Type$EnumUnboxingSharedUtility;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/high16 v1, 0x10000

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {}, Lcom/uc/crashsdk/e;->P()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/uc/crashsdk/g;->T()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/uc/crashsdk/g;->V()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v3}, Lcom/uc/crashsdk/e;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {v4}, Lcom/uc/crashsdk/e;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5, p0, v0}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static j()V
    .locals 2

    :try_start_0
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicy()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    new-instance v1, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v1, v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>(Landroid/os/StrictMode$ThreadPolicy;)V

    invoke-virtual {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitNetwork()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static k()Ljava/lang/String;
    .locals 4

    sget-object v0, Lcom/uc/crashsdk/e;->x:Ljava/lang/String;

    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/uc/crashsdk/e;->y:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/uc/crashsdk/b;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/uc/crashsdk/g;->y()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/uc/crashsdk/e;->x:Ljava/lang/String;

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :goto_0
    return-object v0
.end method

.method private static k(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {}, Lcom/uc/crashsdk/e;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/uc/crashsdk/e;->n()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/uc/crashsdk/e;->Q()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".log"

    invoke-static {v3, p0, v0}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static l(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p0, ""

    return-object p0
.end method

.method public static l()V
    .locals 2

    sget-object v0, Lcom/uc/crashsdk/e;->y:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lcom/uc/crashsdk/e;->x:Ljava/lang/String;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static m(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/uc/crashsdk/g;->w()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/uc/crashsdk/g;->v()Z

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/uc/crashsdk/a/b;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_0
    return-object v0
.end method

.method public static m()V
    .locals 4

    sget-boolean v0, Lcom/uc/crashsdk/e;->ag:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/uc/crashsdk/a/e;

    const/16 v1, 0x19b

    invoke-direct {v0, v1}, Lcom/uc/crashsdk/a/e;-><init>(I)V

    const-wide/16 v1, 0x3e8

    const/4 v3, 0x1

    invoke-static {v3, v0, v1, v2}, Lcom/uc/crashsdk/a/f;->a(ILjava/lang/Runnable;J)Z

    return-void
.end method

.method public static n()Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-static {v0}, Lcom/uc/crashsdk/e;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static n(Ljava/lang/String;)[Z
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {}, Lcom/uc/crashsdk/g;->v()Z

    move-result v2

    invoke-static {}, Lcom/uc/crashsdk/g;->x()Z

    move-result v3

    if-nez v2, :cond_0

    if-eqz v3, :cond_a

    :cond_0
    const-string v4, ".tmp"

    invoke-virtual {p0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, ".ec"

    invoke-virtual {p0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    sget-char v4, Ljava/io/File;->separatorChar:C

    invoke-virtual {p0, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    if-gez v4, :cond_2

    move v4, v0

    move v5, v4

    goto :goto_0

    :cond_2
    move v5, v0

    :cond_3
    :goto_0
    const/16 v6, 0x5f

    invoke-virtual {p0, v6, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    if-ltz v4, :cond_4

    add-int/2addr v5, v1

    add-int/2addr v4, v1

    :cond_4
    if-gez v4, :cond_3

    const/16 v4, 0x8

    if-eq v5, v4, :cond_6

    :cond_5
    :goto_1
    move v2, v0

    move v3, v2

    goto :goto_3

    :cond_6
    invoke-static {}, Lcom/uc/crashsdk/g;->w()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".log"

    invoke-virtual {p0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_8

    invoke-static {v4}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {p0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_7

    goto :goto_1

    :cond_7
    :goto_2
    move v2, v0

    goto :goto_3

    :cond_8
    invoke-static {v4}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    goto :goto_2

    :cond_9
    invoke-virtual {p0, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    invoke-virtual {p0, v5, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {p0, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p0

    if-eq v4, p0, :cond_a

    goto :goto_2

    :cond_a
    :goto_3
    const/4 p0, 0x2

    new-array p0, p0, [Z

    aput-boolean v2, p0, v0

    aput-boolean v3, p0, v1

    return-object p0
.end method

.method public static o()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/uc/crashsdk/e;->b:J

    return-void
.end method

.method private static o(Ljava/lang/String;)Z
    .locals 15

    sget-object v0, Lcom/uc/crashsdk/e;->r:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/uc/crashsdk/g;->W()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "customlog"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x400

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/File;IZ)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    if-eqz v1, :cond_3

    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "([^\\n\\r\\t\\s]+) (\\d+) (\\d+)"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    move v7, v3

    :goto_0
    invoke-virtual {v1, v7}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v7

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_8

    :cond_0
    const/4 v8, 0x2

    invoke-virtual {v1, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-long v10, v4, v8

    const-wide/32 v12, 0x5265c00

    cmp-long v10, v10, v12

    if-gez v10, :cond_1

    const/4 v10, 0x3

    :try_start_1
    invoke-virtual {v1, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v10

    :try_start_2
    invoke-static {v10}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    move v10, v3

    goto :goto_1

    :cond_1
    move v10, v3

    move-wide v8, v4

    :goto_1
    invoke-static {}, Lcom/uc/crashsdk/g;->F()I

    move-result v11

    if-ltz v11, :cond_2

    if-lt v10, v11, :cond_2

    move v11, v7

    goto :goto_2

    :cond_2
    move v11, v3

    :goto_2
    add-int/2addr v10, v7

    sget-object v12, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v9

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v1

    invoke-virtual {v6, v9, v1, v8}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_3
    move v7, v3

    move v11, v7

    :goto_3
    if-nez v7, :cond_4

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " 1\n"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v6, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_4
    const/4 p0, 0x0

    :try_start_3
    new-instance v1, Ljava/io/FileWriter;

    invoke-direct {v1, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, p0, v3, v2}, Ljava/io/Writer;->write(Ljava/lang/String;II)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_4
    :try_start_5
    invoke-static {v1}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_6

    :catchall_1
    move-exception p0

    goto :goto_7

    :catch_1
    move-exception p0

    goto :goto_5

    :catchall_2
    move-exception v1

    move-object v14, v1

    move-object v1, p0

    move-object p0, v14

    goto :goto_7

    :catch_2
    move-exception v1

    move-object v14, v1

    move-object v1, p0

    move-object p0, v14

    :goto_5
    :try_start_6
    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_4

    :goto_6
    :try_start_7
    monitor-exit v0

    return v11

    :goto_7
    invoke-static {v1}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    throw p0

    :goto_8
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw p0
.end method

.method public static p()V
    .locals 5

    sget-object v0, Lcom/uc/crashsdk/e;->B:Ljava/lang/String;

    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/uc/crashsdk/g;->W()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "unique"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0x30

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/File;IZ)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v2, :cond_2

    :try_start_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x24

    if-eq v3, v4, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "[^0-9a-zA-Z-]"

    const-string v3, "-"

    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    move-object v0, v2

    goto :goto_0

    :catchall_1
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_1

    :cond_3
    :goto_0
    :try_start_3
    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/uc/crashsdk/b;->G()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v1, v2}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/File;[B)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :goto_1
    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    move-object v0, v2

    :cond_4
    :goto_2
    sput-object v0, Lcom/uc/crashsdk/e;->B:Ljava/lang/String;

    return-void
.end method

.method private static p(Ljava/lang/String;)Z
    .locals 14

    sget-object v0, Lcom/uc/crashsdk/e;->z:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/uc/crashsdk/e;->A:Ljava/util/Map;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    invoke-static {}, Lcom/uc/crashsdk/b;->l()Ljava/lang/String;

    move-result-object v1

    const-string v3, "all:1"

    invoke-static {v1, v3, v2}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/uc/crashsdk/e;->q(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    sput-object v1, Lcom/uc/crashsdk/e;->A:Ljava/util/Map;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_a

    :cond_0
    :goto_0
    sget-object v1, Lcom/uc/crashsdk/e;->A:Ljava/util/Map;

    const-string v3, "all"

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    sget-object p0, Lcom/uc/crashsdk/e;->A:Ljava/util/Map;

    const-string v1, "all"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto/16 :goto_4

    :cond_1
    sget-object v1, Lcom/uc/crashsdk/e;->A:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/uc/crashsdk/e;->A:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    goto :goto_1

    :cond_2
    const-string v1, "java"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "jni"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "anr"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "unexp"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_2

    :cond_3
    move p0, v2

    goto :goto_3

    :cond_4
    :goto_2
    move p0, v3

    :goto_3
    if-eqz p0, :cond_5

    sget-object v1, Lcom/uc/crashsdk/e;->A:Ljava/util/Map;

    const-string v4, "crash"

    invoke-interface {v1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object p0, Lcom/uc/crashsdk/e;->A:Ljava/util/Map;

    const-string v1, "crash"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    goto :goto_1

    :cond_5
    if-nez p0, :cond_6

    sget-object p0, Lcom/uc/crashsdk/e;->A:Ljava/util/Map;

    const-string v1, "nocrash"

    invoke-interface {p0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    sget-object p0, Lcom/uc/crashsdk/e;->A:Ljava/util/Map;

    const-string v1, "nocrash"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    goto :goto_1

    :cond_6
    sget-object p0, Lcom/uc/crashsdk/e;->A:Ljava/util/Map;

    const-string v1, "other"

    invoke-interface {p0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    sget-object p0, Lcom/uc/crashsdk/e;->A:Ljava/util/Map;

    const-string v1, "other"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    goto :goto_1

    :cond_7
    move p0, v3

    :goto_4
    if-eqz p0, :cond_10

    int-to-long v4, p0

    const-wide/16 v6, 0x0

    cmp-long p0, v4, v6

    const-wide/16 v8, 0x1

    if-gez p0, :cond_d

    const-wide/16 v10, -0x2

    cmp-long p0, v4, v10

    if-nez p0, :cond_8

    const-wide/16 v4, 0x7

    goto :goto_5

    :cond_8
    const-wide/16 v10, -0x3

    cmp-long p0, v4, v10

    if-nez p0, :cond_9

    const-wide/16 v4, 0xf

    goto :goto_5

    :cond_9
    const-wide/16 v10, -0x4

    cmp-long p0, v4, v10

    if-nez p0, :cond_a

    const-wide/16 v4, 0x3c

    goto :goto_5

    :cond_a
    const-wide/16 v4, 0x1e

    :goto_5
    invoke-static {}, Lcom/uc/crashsdk/a;->b()J

    move-result-wide v10

    cmp-long p0, v10, v6

    if-nez p0, :cond_b

    const-wide/16 v10, -0x1

    goto :goto_6

    :cond_b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v10

    const-wide/32 v10, 0x5265c00

    div-long v10, v12, v10

    :goto_6
    cmp-long p0, v10, v4

    if-gtz p0, :cond_c

    move-wide v4, v8

    goto :goto_7

    :cond_c
    sub-long v4, v10, v4

    :cond_d
    :goto_7
    cmp-long p0, v4, v8

    if-nez p0, :cond_e

    :goto_8
    move v2, v3

    goto :goto_9

    :cond_e
    cmp-long p0, v4, v6

    if-gtz p0, :cond_f

    goto :goto_8

    :cond_f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    rem-long/2addr v8, v4

    cmp-long p0, v8, v6

    if-nez p0, :cond_10

    goto :goto_8

    :cond_10
    :goto_9
    monitor-exit v0

    return v2

    :goto_a
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static q()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/uc/crashsdk/e;->B:Ljava/lang/String;

    return-object v0
.end method

.method private static q(Ljava/lang/String;)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "\\|"

    const/16 v2, 0x1e

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, p0, v3

    const-string v5, ":"

    const/4 v6, 0x3

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    aget-object v5, v4, v2

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    const/4 v6, 0x1

    :try_start_0
    aget-object v4, v4, v6

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const/16 v7, 0xa

    invoke-static {v4, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v4

    invoke-static {v4}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    :goto_1
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static r()V
    .locals 5

    const/4 v0, 0x0

    sput-boolean v0, Lcom/uc/crashsdk/e;->O:Z

    invoke-static {}, Lcom/uc/crashsdk/b;->B()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/uc/crashsdk/a/e;

    const/16 v2, 0x1a0

    invoke-direct {v1, v2}, Lcom/uc/crashsdk/a/e;-><init>(I)V

    const-wide/16 v2, 0x2af8

    const/4 v4, 0x3

    invoke-static {v4, v1, v2, v3}, Lcom/uc/crashsdk/a/f;->a(ILjava/lang/Runnable;J)Z

    :cond_0
    invoke-static {}, Lcom/uc/crashsdk/e;->V()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    sput v0, Lcom/uc/crashsdk/e;->N:I

    invoke-static {}, Lcom/uc/crashsdk/e;->X()V

    return-void
.end method

.method private static r(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/uc/crashsdk/g;->q()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/uc/crashsdk/e;->ab()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    :goto_0
    if-eqz p0, :cond_3

    const-string v0, ""

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_3

    :cond_1
    :try_start_1
    invoke-static {}, Lcom/uc/crashsdk/g;->Y()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_2

    :cond_2
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "copy log to: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "crashsdk"

    invoke-static {v2, v0}, Lcom/uc/crashsdk/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/File;Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :goto_2
    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    :cond_3
    :goto_3
    return-void
.end method

.method private static s(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "$^"

    const-string v1, "^$"

    invoke-static {v0, p0, v1}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static s()V
    .locals 1

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    sput-object v0, Lcom/uc/crashsdk/e;->T:Ljava/lang/Thread$UncaughtExceptionHandler;

    new-instance v0, Lcom/uc/crashsdk/e;

    invoke-direct {v0}, Lcom/uc/crashsdk/e;-><init>()V

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    return-void
.end method

.method public static t()V
    .locals 1

    sget-object v0, Lcom/uc/crashsdk/e;->T:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    return-void
.end method

.method public static u()Z
    .locals 1

    sget-object v0, Lcom/uc/crashsdk/e;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/uc/crashsdk/e;->aa()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public static v()Ljava/lang/Throwable;
    .locals 1

    sget-object v0, Lcom/uc/crashsdk/e;->U:Ljava/lang/Throwable;

    return-object v0
.end method

.method public static w()I
    .locals 2

    invoke-static {}, Lcom/uc/crashsdk/b;->I()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    sget v0, Lcom/uc/crashsdk/e;->Z:I

    return v0

    :cond_0
    const/16 v0, 0x64

    return v0
.end method

.method public static x()V
    .locals 6

    invoke-static {}, Lcom/uc/crashsdk/g;->o()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/uc/crashsdk/b;->I()I

    move-result v2

    const/4 v3, 0x5

    const/4 v4, 0x0

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v4

    :goto_0
    new-instance v3, Lcom/uc/crashsdk/a/e;

    const/16 v5, 0x191

    invoke-direct {v3, v5}, Lcom/uc/crashsdk/a/e;-><init>(I)V

    invoke-static {v4, v3}, Lcom/uc/crashsdk/a/f;->a(ILjava/lang/Runnable;)Z

    if-nez v2, :cond_2

    return-void

    :cond_2
    new-instance v2, Lcom/uc/crashsdk/a/e;

    const/16 v3, 0x192

    invoke-direct {v2, v3}, Lcom/uc/crashsdk/a/e;-><init>(I)V

    sput-object v2, Lcom/uc/crashsdk/e;->X:Ljava/lang/Runnable;

    invoke-static {v4, v2, v0, v1}, Lcom/uc/crashsdk/a/f;->a(ILjava/lang/Runnable;J)Z

    return-void
.end method

.method public static y()V
    .locals 4

    sget-boolean v0, Lcom/uc/crashsdk/b;->c:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/uc/crashsdk/a;->c:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/uc/crashsdk/e;->aa:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/uc/crashsdk/a/f;->b(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/uc/crashsdk/e;->aa:Ljava/lang/Runnable;

    const-wide/16 v1, 0x3e8

    const/4 v3, 0x0

    invoke-static {v3, v0, v1, v2}, Lcom/uc/crashsdk/a/f;->a(ILjava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public static z()Z
    .locals 3

    sget-object v0, Lcom/uc/crashsdk/e;->Y:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/uc/crashsdk/e;->X:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    sget-boolean v2, Lcom/uc/crashsdk/e;->W:Z

    if-nez v2, :cond_0

    invoke-static {v1}, Lcom/uc/crashsdk/a/f;->a(Ljava/lang/Runnable;)V

    const/4 v1, 0x0

    sput-object v1, Lcom/uc/crashsdk/e;->X:Ljava/lang/Runnable;

    monitor-exit v0

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v1

    goto :goto_0

    :cond_0
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public final a(Ljava/lang/Thread;Ljava/lang/Throwable;Z)V
    .locals 20

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "original exception is: "

    const-string v4, "crashsdk"

    const-string v5, "Call java default handler: "

    const-string v6, "DEBUG"

    const-string v7, "begin dump hprof: "

    sget-boolean v0, Lcom/uc/crashsdk/e;->ag:Z

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/uc/crashsdk/b;->d:Z

    if-nez v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/uc/crashsdk/b;->L()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move v10, v8

    goto :goto_0

    :cond_2
    move v10, v9

    :goto_0
    :try_start_0
    sget-object v0, Lcom/uc/crashsdk/e;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    const/4 v13, 0x4

    if-eqz v0, :cond_b

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    if-lez v0, :cond_b

    const-string v0, "another thread is generating java report!"

    invoke-static {v6, v0}, Lcom/uc/crashsdk/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "current thread exception is:"

    invoke-static {v6, v0}, Lcom/uc/crashsdk/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {p2 .. p2}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;)V

    move v7, v9

    :cond_3
    sget-boolean v0, Lcom/uc/crashsdk/e;->V:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_4

    const-wide/16 v14, 0x3e8

    :try_start_1
    invoke-static {v14, v15}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v14, v0

    :try_start_2
    invoke-static {v14}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    :goto_1
    add-int/2addr v7, v8

    if-lt v7, v13, :cond_3

    goto :goto_3

    :catchall_1
    move-exception v0

    move v12, v9

    :goto_2
    const-wide/16 v13, 0x0

    goto/16 :goto_3e

    :cond_4
    :goto_3
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz p3, :cond_5

    :try_start_3
    invoke-static {}, Lcom/uc/crashsdk/g;->r()Z

    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-eqz v0, :cond_5

    if-nez v10, :cond_5

    :try_start_4
    invoke-static {v8, v9}, Lcom/uc/crashsdk/e;->a(ZZ)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_5

    :catchall_2
    move-exception v0

    move v3, v8

    goto :goto_4

    :catchall_3
    move-exception v0

    move v3, v9

    :goto_4
    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    if-nez v3, :cond_6

    :cond_5
    if-nez v10, :cond_6

    invoke-static {v9}, Lcom/uc/crashsdk/e;->b(Z)V

    :cond_6
    :goto_5
    :try_start_5
    invoke-static {v9}, Lcom/uc/crashsdk/f;->c(Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    goto :goto_6

    :catchall_4
    move-exception v0

    move-object v3, v0

    invoke-static {v3}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    :goto_6
    :try_start_6
    invoke-static {}, Lcom/uc/crashsdk/g;->i()Z

    move-result v0

    invoke-static {}, Lcom/uc/crashsdk/a/d;->e()Z

    move-result v3

    if-nez v3, :cond_7

    move v0, v8

    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/uc/crashsdk/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_8

    sget-object v0, Lcom/uc/crashsdk/e;->T:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_8

    invoke-interface {v0, v1, v2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_7

    :catchall_5
    move-exception v0

    goto :goto_8

    :cond_8
    :goto_7
    invoke-static {}, Lcom/uc/crashsdk/b;->B()Z

    move-result v0

    if-eqz v0, :cond_9

    if-nez v10, :cond_9

    invoke-static {}, Lcom/uc/crashsdk/a/g;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/uc/crashsdk/b;->b(Landroid/content/Context;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    goto :goto_9

    :goto_8
    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    :cond_9
    :goto_9
    sput-boolean v8, Lcom/uc/crashsdk/e;->V:Z

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    if-lez v0, :cond_a

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    :cond_a
    return-void

    :cond_b
    :try_start_7
    sput-object v2, Lcom/uc/crashsdk/e;->U:Ljava/lang/Throwable;

    if-nez v10, :cond_12

    invoke-static {}, Lcom/uc/crashsdk/a/d;->e()Z

    move-result v0

    if-nez v0, :cond_12

    invoke-static {}, Lcom/uc/crashsdk/a/d;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/uc/crashsdk/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz p3, :cond_c

    :try_start_8
    invoke-static {}, Lcom/uc/crashsdk/g;->r()Z

    move-result v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_7

    if-eqz v0, :cond_c

    if-nez v10, :cond_c

    :try_start_9
    invoke-static {v8, v9}, Lcom/uc/crashsdk/e;->a(ZZ)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    goto :goto_b

    :catchall_6
    move-exception v0

    move v3, v8

    goto :goto_a

    :catchall_7
    move-exception v0

    move v3, v9

    :goto_a
    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    if-nez v3, :cond_d

    :cond_c
    if-nez v10, :cond_d

    invoke-static {v9}, Lcom/uc/crashsdk/e;->b(Z)V

    :cond_d
    :goto_b
    :try_start_a
    invoke-static {v9}, Lcom/uc/crashsdk/f;->c(Z)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_8

    goto :goto_c

    :catchall_8
    move-exception v0

    move-object v3, v0

    invoke-static {v3}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    :goto_c
    :try_start_b
    invoke-static {}, Lcom/uc/crashsdk/g;->i()Z

    move-result v0

    invoke-static {}, Lcom/uc/crashsdk/a/d;->e()Z

    move-result v3

    if-nez v3, :cond_e

    move v0, v8

    :cond_e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/uc/crashsdk/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_f

    sget-object v0, Lcom/uc/crashsdk/e;->T:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_f

    invoke-interface {v0, v1, v2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_d

    :catchall_9
    move-exception v0

    goto :goto_e

    :cond_f
    :goto_d
    invoke-static {}, Lcom/uc/crashsdk/b;->B()Z

    move-result v0

    if-eqz v0, :cond_10

    if-nez v10, :cond_10

    invoke-static {}, Lcom/uc/crashsdk/a/g;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/uc/crashsdk/b;->b(Landroid/content/Context;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_9

    goto :goto_f

    :goto_e
    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    :cond_10
    :goto_f
    sput-boolean v8, Lcom/uc/crashsdk/e;->V:Z

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    if-lez v0, :cond_11

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    :cond_11
    return-void

    :cond_12
    :try_start_c
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v14, "encryptLog: "

    invoke-direct {v0, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/uc/crashsdk/g;->x()Z

    move-result v14

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v14, ", zipCrashLog: "

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/uc/crashsdk/g;->x()Z

    move-result v14

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/uc/crashsdk/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/uc/crashsdk/g;->a:Ljava/lang/RuntimeException;

    if-eqz v0, :cond_13

    const-string v0, "the set zip log to false stack is:"

    invoke-static {v6, v0}, Lcom/uc/crashsdk/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/uc/crashsdk/g;->a:Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_13
    sget-object v0, Lcom/uc/crashsdk/g;->b:Ljava/lang/RuntimeException;

    if-eqz v0, :cond_14

    const-string v0, "the set encrypt to true stack is:"

    invoke-static {v6, v0}, Lcom/uc/crashsdk/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/uc/crashsdk/g;->b:Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_14
    const-string v0, "begin to generate java report"

    invoke-static {v6, v0}, Lcom/uc/crashsdk/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :try_start_d
    invoke-direct/range {p0 .. p0}, Lcom/uc/crashsdk/e;->N()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_a

    goto :goto_10

    :catchall_a
    move-exception v0

    move-object v14, v0

    :try_start_e
    invoke-static {v14}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    :goto_10
    :try_start_f
    invoke-static {}, Lcom/uc/crashsdk/g;->t()Z

    move-result v15
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_c

    :try_start_10
    invoke-static {}, Lcom/uc/crashsdk/g;->g()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_15

    const-string v11, ""

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_16

    goto :goto_11

    :catchall_b
    move-exception v0

    goto :goto_12

    :cond_15
    :goto_11
    invoke-static {}, Lcom/uc/crashsdk/e;->S()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/uc/crashsdk/e;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_16
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/uc/crashsdk/g;->X()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_b

    move-object v11, v0

    move v12, v9

    goto :goto_13

    :catchall_c
    move-exception v0

    move v15, v9

    :goto_12
    :try_start_11
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "get java log name failed: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v6, v11}, Lcom/uc/crashsdk/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/uc/crashsdk/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {p2 .. p2}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    move v12, v8

    const/4 v11, 0x0

    :goto_13
    const-string v14, "java"

    const-string v8, "omit java crash"

    if-nez v10, :cond_26

    :try_start_12
    invoke-static {}, Lcom/uc/crashsdk/g;->a()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_e

    :try_start_13
    invoke-static {}, Lcom/uc/crashsdk/b;->B()Z

    move-result v0

    if-eqz v0, :cond_17

    const/4 v0, 0x3

    invoke-static {v0}, Lcom/uc/crashsdk/f;->a(I)V

    goto :goto_15

    :catchall_d
    move-exception v0

    goto :goto_14

    :cond_17
    invoke-static {v13}, Lcom/uc/crashsdk/f;->a(I)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_d

    goto :goto_15

    :goto_14
    :try_start_14
    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_e

    goto :goto_15

    :catchall_e
    move-exception v0

    :try_start_15
    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_14

    :goto_15
    :try_start_16
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/uc/crashsdk/b;->b()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v0, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_f

    goto :goto_16

    :catchall_f
    move-exception v0

    :try_start_17
    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    :goto_16
    if-eqz v15, :cond_1e

    invoke-static {v6, v8}, Lcom/uc/crashsdk/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_14

    if-eqz p3, :cond_18

    :try_start_18
    invoke-static {}, Lcom/uc/crashsdk/g;->r()Z

    move-result v0
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_11

    if-eqz v0, :cond_18

    if-nez v10, :cond_18

    const/4 v3, 0x1

    :try_start_19
    invoke-static {v3, v9}, Lcom/uc/crashsdk/e;->a(ZZ)Z
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_10

    goto :goto_18

    :catchall_10
    move-exception v0

    move-object v3, v0

    const/4 v0, 0x1

    goto :goto_17

    :catchall_11
    move-exception v0

    move-object v3, v0

    move v0, v9

    :goto_17
    invoke-static {v3}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    if-nez v0, :cond_19

    :cond_18
    if-nez v10, :cond_19

    invoke-static {v9}, Lcom/uc/crashsdk/e;->b(Z)V

    :cond_19
    :goto_18
    :try_start_1a
    invoke-static {v9}, Lcom/uc/crashsdk/f;->c(Z)V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_12

    goto :goto_19

    :catchall_12
    move-exception v0

    move-object v3, v0

    invoke-static {v3}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    :goto_19
    :try_start_1b
    invoke-static {}, Lcom/uc/crashsdk/g;->i()Z

    move-result v0

    invoke-static {}, Lcom/uc/crashsdk/a/d;->e()Z

    move-result v3

    if-nez v3, :cond_1a

    const/4 v0, 0x1

    :cond_1a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/uc/crashsdk/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_1b

    sget-object v0, Lcom/uc/crashsdk/e;->T:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_1b

    invoke-interface {v0, v1, v2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_1a

    :catchall_13
    move-exception v0

    goto :goto_1c

    :cond_1b
    :goto_1a
    invoke-static {}, Lcom/uc/crashsdk/b;->B()Z

    move-result v0

    if-eqz v0, :cond_1c

    if-nez v10, :cond_1c

    invoke-static {}, Lcom/uc/crashsdk/a/g;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/uc/crashsdk/b;->b(Landroid/content/Context;)V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_13

    :cond_1c
    :goto_1b
    const/4 v1, 0x1

    goto :goto_1d

    :goto_1c
    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    goto :goto_1b

    :goto_1d
    sput-boolean v1, Lcom/uc/crashsdk/e;->V:Z

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    if-lez v0, :cond_1d

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    :cond_1d
    return-void

    :catchall_14
    move-exception v0

    goto/16 :goto_2

    :cond_1e
    :try_start_1c
    invoke-static {v14}, Lcom/uc/crashsdk/e;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_25

    const-string v0, "java log sample miss"

    invoke-static {v6, v0}, Lcom/uc/crashsdk/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_14

    if-eqz p3, :cond_1f

    :try_start_1d
    invoke-static {}, Lcom/uc/crashsdk/g;->r()Z

    move-result v0
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_16

    if-eqz v0, :cond_1f

    if-nez v10, :cond_1f

    const/4 v3, 0x1

    :try_start_1e
    invoke-static {v3, v9}, Lcom/uc/crashsdk/e;->a(ZZ)Z
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_15

    goto :goto_1f

    :catchall_15
    move-exception v0

    move-object v3, v0

    const/4 v0, 0x1

    goto :goto_1e

    :catchall_16
    move-exception v0

    move-object v3, v0

    move v0, v9

    :goto_1e
    invoke-static {v3}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    if-nez v0, :cond_20

    :cond_1f
    if-nez v10, :cond_20

    invoke-static {v9}, Lcom/uc/crashsdk/e;->b(Z)V

    :cond_20
    :goto_1f
    :try_start_1f
    invoke-static {v9}, Lcom/uc/crashsdk/f;->c(Z)V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_17

    goto :goto_20

    :catchall_17
    move-exception v0

    move-object v3, v0

    invoke-static {v3}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    :goto_20
    :try_start_20
    invoke-static {}, Lcom/uc/crashsdk/g;->i()Z

    move-result v0

    invoke-static {}, Lcom/uc/crashsdk/a/d;->e()Z

    move-result v3

    if-nez v3, :cond_21

    const/4 v0, 0x1

    :cond_21
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/uc/crashsdk/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_22

    sget-object v0, Lcom/uc/crashsdk/e;->T:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_22

    invoke-interface {v0, v1, v2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_21

    :catchall_18
    move-exception v0

    goto :goto_23

    :cond_22
    :goto_21
    invoke-static {}, Lcom/uc/crashsdk/b;->B()Z

    move-result v0

    if-eqz v0, :cond_23

    if-nez v10, :cond_23

    invoke-static {}, Lcom/uc/crashsdk/a/g;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/uc/crashsdk/b;->b(Landroid/content/Context;)V
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_18

    :cond_23
    :goto_22
    const/4 v1, 0x1

    goto :goto_24

    :goto_23
    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    goto :goto_22

    :goto_24
    sput-boolean v1, Lcom/uc/crashsdk/e;->V:Z

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    if-lez v0, :cond_24

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    :cond_24
    return-void

    :cond_25
    const-wide/16 v13, 0x0

    goto/16 :goto_35

    :cond_26
    if-eqz v15, :cond_27

    :try_start_21
    const-string v11, "omit"

    invoke-static {v6, v8}, Lcom/uc/crashsdk/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_27
    sget-boolean v0, Lcom/uc/crashsdk/b;->d:Z

    if-eqz v0, :cond_28

    const/4 v8, 0x0

    invoke-static {v11, v14, v8, v9}, Lcom/uc/crashsdk/JNIBridge;->nativeClientCreateConnection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)J

    move-result-wide v13
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_14

    :goto_25
    const-wide/16 v16, 0x0

    goto :goto_26

    :cond_28
    const-wide/16 v13, 0x0

    goto :goto_25

    :goto_26
    cmp-long v0, v13, v16

    if-nez v0, :cond_30

    :try_start_22
    const-string v7, "skip java crash:"

    invoke-static {v6, v7}, Lcom/uc/crashsdk/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {p2 .. p2}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;)V
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_1d

    if-eqz v0, :cond_29

    sget-boolean v0, Lcom/uc/crashsdk/b;->d:Z

    if-eqz v0, :cond_29

    invoke-static {v13, v14}, Lcom/uc/crashsdk/JNIBridge;->nativeClientCloseConnection(J)V

    :cond_29
    if-eqz p3, :cond_2a

    :try_start_23
    invoke-static {}, Lcom/uc/crashsdk/g;->r()Z

    move-result v0
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_1a

    if-eqz v0, :cond_2a

    if-nez v10, :cond_2a

    const/4 v3, 0x1

    :try_start_24
    invoke-static {v3, v9}, Lcom/uc/crashsdk/e;->a(ZZ)Z
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_19

    goto :goto_28

    :catchall_19
    move-exception v0

    move-object v3, v0

    const/4 v0, 0x1

    goto :goto_27

    :catchall_1a
    move-exception v0

    move-object v3, v0

    move v0, v9

    :goto_27
    invoke-static {v3}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    if-nez v0, :cond_2b

    :cond_2a
    if-nez v10, :cond_2b

    invoke-static {v9}, Lcom/uc/crashsdk/e;->b(Z)V

    :cond_2b
    :goto_28
    :try_start_25
    invoke-static {v9}, Lcom/uc/crashsdk/f;->c(Z)V
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_1b

    goto :goto_29

    :catchall_1b
    move-exception v0

    move-object v3, v0

    invoke-static {v3}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    :goto_29
    :try_start_26
    invoke-static {}, Lcom/uc/crashsdk/g;->i()Z

    move-result v0

    invoke-static {}, Lcom/uc/crashsdk/a/d;->e()Z

    move-result v3

    if-nez v3, :cond_2c

    const/4 v0, 0x1

    :cond_2c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/uc/crashsdk/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_2d

    sget-object v0, Lcom/uc/crashsdk/e;->T:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_2d

    invoke-interface {v0, v1, v2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_2a

    :catchall_1c
    move-exception v0

    goto :goto_2c

    :cond_2d
    :goto_2a
    invoke-static {}, Lcom/uc/crashsdk/b;->B()Z

    move-result v0

    if-eqz v0, :cond_2e

    if-nez v10, :cond_2e

    invoke-static {}, Lcom/uc/crashsdk/a/g;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/uc/crashsdk/b;->b(Landroid/content/Context;)V
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_1c

    :cond_2e
    :goto_2b
    const/4 v1, 0x1

    goto :goto_2d

    :goto_2c
    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    goto :goto_2b

    :goto_2d
    sput-boolean v1, Lcom/uc/crashsdk/e;->V:Z

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    if-lez v0, :cond_2f

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    :cond_2f
    return-void

    :catchall_1d
    move-exception v0

    goto/16 :goto_3e

    :cond_30
    if-eqz v15, :cond_38

    if-eqz v0, :cond_31

    sget-boolean v0, Lcom/uc/crashsdk/b;->d:Z

    if-eqz v0, :cond_31

    invoke-static {v13, v14}, Lcom/uc/crashsdk/JNIBridge;->nativeClientCloseConnection(J)V

    :cond_31
    if-eqz p3, :cond_32

    :try_start_27
    invoke-static {}, Lcom/uc/crashsdk/g;->r()Z

    move-result v0
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_1f

    if-eqz v0, :cond_32

    if-nez v10, :cond_32

    const/4 v3, 0x1

    :try_start_28
    invoke-static {v3, v9}, Lcom/uc/crashsdk/e;->a(ZZ)Z
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_1e

    goto :goto_2f

    :catchall_1e
    move-exception v0

    move-object v3, v0

    const/4 v0, 0x1

    goto :goto_2e

    :catchall_1f
    move-exception v0

    move-object v3, v0

    move v0, v9

    :goto_2e
    invoke-static {v3}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    if-nez v0, :cond_33

    :cond_32
    if-nez v10, :cond_33

    invoke-static {v9}, Lcom/uc/crashsdk/e;->b(Z)V

    :cond_33
    :goto_2f
    :try_start_29
    invoke-static {v9}, Lcom/uc/crashsdk/f;->c(Z)V
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_20

    goto :goto_30

    :catchall_20
    move-exception v0

    move-object v3, v0

    invoke-static {v3}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    :goto_30
    :try_start_2a
    invoke-static {}, Lcom/uc/crashsdk/g;->i()Z

    move-result v0

    invoke-static {}, Lcom/uc/crashsdk/a/d;->e()Z

    move-result v3

    if-nez v3, :cond_34

    const/4 v0, 0x1

    :cond_34
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/uc/crashsdk/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_35

    sget-object v0, Lcom/uc/crashsdk/e;->T:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_35

    invoke-interface {v0, v1, v2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_31

    :catchall_21
    move-exception v0

    goto :goto_33

    :cond_35
    :goto_31
    invoke-static {}, Lcom/uc/crashsdk/b;->B()Z

    move-result v0

    if-eqz v0, :cond_36

    if-nez v10, :cond_36

    invoke-static {}, Lcom/uc/crashsdk/a/g;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/uc/crashsdk/b;->b(Landroid/content/Context;)V
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_21

    :cond_36
    :goto_32
    const/4 v1, 0x1

    goto :goto_34

    :goto_33
    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    goto :goto_32

    :goto_34
    sput-boolean v1, Lcom/uc/crashsdk/e;->V:Z

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    if-lez v0, :cond_37

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    :cond_37
    return-void

    :cond_38
    :goto_35
    :try_start_2b
    instance-of v0, v2, Ljava/lang/OutOfMemoryError;

    invoke-static {v2, v11, v13, v14, v0}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/lang/String;JZ)Ljava/lang/String;

    const-string v8, "generate java report finished"

    invoke-static {v6, v8}, Lcom/uc/crashsdk/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/uc/crashsdk/b;->L()Z

    move-result v8

    if-nez v8, :cond_3a

    if-eqz v0, :cond_3a

    invoke-static {}, Lcom/uc/crashsdk/g;->j()Z

    move-result v0

    if-eqz v0, :cond_3a

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/uc/crashsdk/g;->Y()Ljava/lang/String;

    move-result-object v8

    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v15

    if-nez v15, :cond_39

    invoke-virtual {v11}, Ljava/io/File;->mkdirs()Z

    :cond_39
    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".hprof"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/uc/crashsdk/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_1d

    :try_start_2c
    invoke-static {v0}, Landroid/os/Debug;->dumpHprofData(Ljava/lang/String;)V
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_22

    goto :goto_36

    :catchall_22
    move-exception v0

    move-object v11, v0

    :try_start_2d
    invoke-static {v11}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    :goto_36
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v11, "end dump hprof, use "

    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    sub-long v7, v18, v7

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " ms"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/uc/crashsdk/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_1d

    :cond_3a
    const-wide/16 v6, 0x0

    cmp-long v0, v13, v6

    if-eqz v0, :cond_3b

    sget-boolean v0, Lcom/uc/crashsdk/b;->d:Z

    if-eqz v0, :cond_3b

    invoke-static {v13, v14}, Lcom/uc/crashsdk/JNIBridge;->nativeClientCloseConnection(J)V

    :cond_3b
    if-eqz p3, :cond_3c

    :try_start_2e
    invoke-static {}, Lcom/uc/crashsdk/g;->r()Z

    move-result v0
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_24

    if-eqz v0, :cond_3c

    if-nez v10, :cond_3c

    const/4 v3, 0x1

    :try_start_2f
    invoke-static {v3, v9}, Lcom/uc/crashsdk/e;->a(ZZ)Z
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_23

    goto :goto_38

    :catchall_23
    move-exception v0

    move-object v3, v0

    const/4 v0, 0x1

    goto :goto_37

    :catchall_24
    move-exception v0

    move-object v3, v0

    move v0, v9

    :goto_37
    invoke-static {v3}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    if-nez v0, :cond_3d

    :cond_3c
    if-nez v10, :cond_3d

    invoke-static {v9}, Lcom/uc/crashsdk/e;->b(Z)V

    :cond_3d
    :goto_38
    :try_start_30
    invoke-static {v9}, Lcom/uc/crashsdk/f;->c(Z)V
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_25

    goto :goto_39

    :catchall_25
    move-exception v0

    move-object v3, v0

    invoke-static {v3}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    :goto_39
    :try_start_31
    invoke-static {}, Lcom/uc/crashsdk/g;->i()Z

    move-result v0

    invoke-static {}, Lcom/uc/crashsdk/a/d;->e()Z

    move-result v3

    if-nez v3, :cond_3e

    const/4 v0, 0x1

    :cond_3e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/uc/crashsdk/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_3f

    sget-object v0, Lcom/uc/crashsdk/e;->T:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_3f

    invoke-interface {v0, v1, v2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_3a

    :catchall_26
    move-exception v0

    goto :goto_3c

    :cond_3f
    :goto_3a
    invoke-static {}, Lcom/uc/crashsdk/b;->B()Z

    move-result v0

    if-eqz v0, :cond_40

    if-nez v10, :cond_40

    invoke-static {}, Lcom/uc/crashsdk/a/g;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/uc/crashsdk/b;->b(Landroid/content/Context;)V
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_26

    :cond_40
    :goto_3b
    const/4 v1, 0x1

    goto :goto_3d

    :goto_3c
    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    goto :goto_3b

    :goto_3d
    sput-boolean v1, Lcom/uc/crashsdk/e;->V:Z

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    if-lez v0, :cond_41

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    :cond_41
    return-void

    :goto_3e
    :try_start_32
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "exception occurs while java log: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/uc/crashsdk/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;)V

    if-nez v12, :cond_42

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/uc/crashsdk/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {p2 .. p2}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;)V
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_27

    :cond_42
    const-wide/16 v6, 0x0

    goto :goto_3f

    :catchall_27
    move-exception v0

    move-object v3, v0

    const-wide/16 v6, 0x0

    goto/16 :goto_47

    :goto_3f
    cmp-long v0, v13, v6

    if-eqz v0, :cond_43

    sget-boolean v0, Lcom/uc/crashsdk/b;->d:Z

    if-eqz v0, :cond_43

    invoke-static {v13, v14}, Lcom/uc/crashsdk/JNIBridge;->nativeClientCloseConnection(J)V

    :cond_43
    if-eqz p3, :cond_44

    :try_start_33
    invoke-static {}, Lcom/uc/crashsdk/g;->r()Z

    move-result v0
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_29

    if-eqz v0, :cond_44

    if-nez v10, :cond_44

    const/4 v3, 0x1

    :try_start_34
    invoke-static {v3, v9}, Lcom/uc/crashsdk/e;->a(ZZ)Z
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_28

    goto :goto_41

    :catchall_28
    move-exception v0

    move-object v3, v0

    const/4 v0, 0x1

    goto :goto_40

    :catchall_29
    move-exception v0

    move-object v3, v0

    move v0, v9

    :goto_40
    invoke-static {v3}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    if-nez v0, :cond_45

    :cond_44
    if-nez v10, :cond_45

    invoke-static {v9}, Lcom/uc/crashsdk/e;->b(Z)V

    :cond_45
    :goto_41
    :try_start_35
    invoke-static {v9}, Lcom/uc/crashsdk/f;->c(Z)V
    :try_end_35
    .catchall {:try_start_35 .. :try_end_35} :catchall_2a

    goto :goto_42

    :catchall_2a
    move-exception v0

    move-object v3, v0

    invoke-static {v3}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    :goto_42
    :try_start_36
    invoke-static {}, Lcom/uc/crashsdk/g;->i()Z

    move-result v0

    invoke-static {}, Lcom/uc/crashsdk/a/d;->e()Z

    move-result v3

    if-nez v3, :cond_46

    const/4 v0, 0x1

    :cond_46
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/uc/crashsdk/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_47

    sget-object v0, Lcom/uc/crashsdk/e;->T:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_47

    invoke-interface {v0, v1, v2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_43

    :catchall_2b
    move-exception v0

    goto :goto_45

    :cond_47
    :goto_43
    invoke-static {}, Lcom/uc/crashsdk/b;->B()Z

    move-result v0

    if-eqz v0, :cond_48

    if-nez v10, :cond_48

    invoke-static {}, Lcom/uc/crashsdk/a/g;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/uc/crashsdk/b;->b(Landroid/content/Context;)V
    :try_end_36
    .catchall {:try_start_36 .. :try_end_36} :catchall_2b

    :cond_48
    :goto_44
    const/4 v1, 0x1

    goto :goto_46

    :goto_45
    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    goto :goto_44

    :goto_46
    sput-boolean v1, Lcom/uc/crashsdk/e;->V:Z

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    if-lez v0, :cond_49

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    :cond_49
    return-void

    :goto_47
    cmp-long v0, v13, v6

    if-eqz v0, :cond_4a

    sget-boolean v0, Lcom/uc/crashsdk/b;->d:Z

    if-eqz v0, :cond_4a

    invoke-static {v13, v14}, Lcom/uc/crashsdk/JNIBridge;->nativeClientCloseConnection(J)V

    :cond_4a
    if-eqz p3, :cond_4b

    :try_start_37
    invoke-static {}, Lcom/uc/crashsdk/g;->r()Z

    move-result v0
    :try_end_37
    .catchall {:try_start_37 .. :try_end_37} :catchall_2d

    if-eqz v0, :cond_4b

    if-nez v10, :cond_4b

    const/4 v6, 0x1

    :try_start_38
    invoke-static {v6, v9}, Lcom/uc/crashsdk/e;->a(ZZ)Z
    :try_end_38
    .catchall {:try_start_38 .. :try_end_38} :catchall_2c

    goto :goto_49

    :catchall_2c
    move-exception v0

    move-object v6, v0

    const/4 v0, 0x1

    goto :goto_48

    :catchall_2d
    move-exception v0

    move-object v6, v0

    move v0, v9

    :goto_48
    invoke-static {v6}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    if-nez v0, :cond_4c

    :cond_4b
    if-nez v10, :cond_4c

    invoke-static {v9}, Lcom/uc/crashsdk/e;->b(Z)V

    :cond_4c
    :goto_49
    :try_start_39
    invoke-static {v9}, Lcom/uc/crashsdk/f;->c(Z)V
    :try_end_39
    .catchall {:try_start_39 .. :try_end_39} :catchall_2e

    goto :goto_4a

    :catchall_2e
    move-exception v0

    move-object v6, v0

    invoke-static {v6}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    :goto_4a
    :try_start_3a
    invoke-static {}, Lcom/uc/crashsdk/g;->i()Z

    move-result v0

    invoke-static {}, Lcom/uc/crashsdk/a/d;->e()Z

    move-result v6

    if-nez v6, :cond_4d

    const/4 v0, 0x1

    :cond_4d
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/uc/crashsdk/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_4e

    sget-object v0, Lcom/uc/crashsdk/e;->T:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_4e

    invoke-interface {v0, v1, v2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_4b

    :catchall_2f
    move-exception v0

    goto :goto_4d

    :cond_4e
    :goto_4b
    invoke-static {}, Lcom/uc/crashsdk/b;->B()Z

    move-result v0

    if-eqz v0, :cond_4f

    if-nez v10, :cond_4f

    invoke-static {}, Lcom/uc/crashsdk/a/g;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/uc/crashsdk/b;->b(Landroid/content/Context;)V
    :try_end_3a
    .catchall {:try_start_3a .. :try_end_3a} :catchall_2f

    :cond_4f
    :goto_4c
    const/4 v1, 0x1

    goto :goto_4e

    :goto_4d
    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    goto :goto_4c

    :goto_4e
    sput-boolean v1, Lcom/uc/crashsdk/e;->V:Z

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    if-lez v0, :cond_50

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    :cond_50
    throw v3
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Thread;Ljava/lang/Throwable;Z)V

    return-void
.end method
