.class public final Lcom/chad/library/adapter4/loadState/LoadState$None;
.super Lcom/chad/library/adapter4/loadState/LoadState;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/chad/library/adapter4/loadState/LoadState$None;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/chad/library/adapter4/loadState/LoadState$None;

    invoke-direct {v0}, Lcom/chad/library/adapter4/loadState/LoadState$None;-><init>()V

    sput-object v0, Lcom/chad/library/adapter4/loadState/LoadState$None;->INSTANCE:Lcom/chad/library/adapter4/loadState/LoadState$None;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/chad/library/adapter4/loadState/LoadState;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/chad/library/adapter4/loadState/LoadState$None;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/chad/library/adapter4/loadState/LoadState$None;

    iget-boolean p1, p1, Lcom/chad/library/adapter4/loadState/LoadState;->endOfPaginationReached:Z

    iget-boolean p0, p0, Lcom/chad/library/adapter4/loadState/LoadState;->endOfPaginationReached:Z

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final hashCode()I
    .locals 0

    iget-boolean p0, p0, Lcom/chad/library/adapter4/loadState/LoadState;->endOfPaginationReached:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "None(endOfPaginationReached="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/chad/library/adapter4/loadState/LoadState;->endOfPaginationReached:Z

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
