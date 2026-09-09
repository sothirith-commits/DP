.class public final Lcom/luck/picture/lib/config/SelectorProviders;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static volatile selectorProviders:Lcom/luck/picture/lib/config/SelectorProviders;


# instance fields
.field public final selectionConfigsQueue:Ljava/util/LinkedList;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/luck/picture/lib/config/SelectorProviders;->selectionConfigsQueue:Ljava/util/LinkedList;

    return-void
.end method

.method public static getInstance()Lcom/luck/picture/lib/config/SelectorProviders;
    .locals 2

    sget-object v0, Lcom/luck/picture/lib/config/SelectorProviders;->selectorProviders:Lcom/luck/picture/lib/config/SelectorProviders;

    if-nez v0, :cond_1

    const-class v0, Lcom/luck/picture/lib/config/SelectorProviders;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/luck/picture/lib/config/SelectorProviders;->selectorProviders:Lcom/luck/picture/lib/config/SelectorProviders;

    if-nez v1, :cond_0

    new-instance v1, Lcom/luck/picture/lib/config/SelectorProviders;

    invoke-direct {v1}, Lcom/luck/picture/lib/config/SelectorProviders;-><init>()V

    sput-object v1, Lcom/luck/picture/lib/config/SelectorProviders;->selectorProviders:Lcom/luck/picture/lib/config/SelectorProviders;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_2
    sget-object v0, Lcom/luck/picture/lib/config/SelectorProviders;->selectorProviders:Lcom/luck/picture/lib/config/SelectorProviders;

    return-object v0
.end method


# virtual methods
.method public final getSelectorConfig()Lcom/luck/picture/lib/config/SelectorConfig;
    .locals 1

    iget-object p0, p0, Lcom/luck/picture/lib/config/SelectorProviders;->selectionConfigsQueue:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/luck/picture/lib/config/SelectorConfig;

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/luck/picture/lib/config/SelectorConfig;

    invoke-direct {p0}, Lcom/luck/picture/lib/config/SelectorConfig;-><init>()V

    :goto_0
    return-object p0
.end method
