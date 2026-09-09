.class public final Lcom/deepalhome/launcher/wallpaper/FloatBallManagementAdapter$DiffCallback;
.super Landroidx/recyclerview/widget/DiffUtil$ItemCallback;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/recyclerview/widget/DiffUtil$ItemCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 4

    check-cast p1, Lcom/deepalhome/launcher/floating/CachedIcon;

    check-cast p2, Lcom/deepalhome/launcher/floating/CachedIcon;

    invoke-virtual {p1}, Lcom/deepalhome/launcher/floating/CachedIcon;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Lcom/deepalhome/launcher/floating/CachedIcon;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/deepalhome/launcher/floating/CachedIcon;->getLastModified()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/deepalhome/launcher/floating/CachedIcon;->getLastModified()J

    move-result-wide v2

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    invoke-virtual {p1}, Lcom/deepalhome/launcher/floating/CachedIcon;->getSize()J

    move-result-wide p0

    invoke-virtual {p2}, Lcom/deepalhome/launcher/floating/CachedIcon;->getSize()J

    move-result-wide v0

    cmp-long p0, p0, v0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/deepalhome/launcher/floating/CachedIcon;

    check-cast p2, Lcom/deepalhome/launcher/floating/CachedIcon;

    invoke-virtual {p1}, Lcom/deepalhome/launcher/floating/CachedIcon;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Lcom/deepalhome/launcher/floating/CachedIcon;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
