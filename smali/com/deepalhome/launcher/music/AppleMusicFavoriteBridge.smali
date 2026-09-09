.class public final Lcom/deepalhome/launcher/music/AppleMusicFavoriteBridge;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/deepalhome/launcher/music/AppleMusicFavoriteBridge;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/deepalhome/launcher/music/AppleMusicFavoriteBridge;

    invoke-direct {v0}, Lcom/deepalhome/launcher/music/AppleMusicFavoriteBridge;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/music/AppleMusicFavoriteBridge;->INSTANCE:Lcom/deepalhome/launcher/music/AppleMusicFavoriteBridge;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Landroid/content/Intent;)Lcom/deepalhome/launcher/music/AppleMusicFavoriteBridge$FavoriteState;
    .locals 9

    const-string v0, "intent"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.apple.android.music.playback.action.FAVORITE_STATE_CHANGED"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    new-instance v0, Lcom/deepalhome/launcher/music/AppleMusicFavoriteBridge$FavoriteState;

    const-string v2, "media_id"

    invoke-virtual {p0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "title"

    invoke-virtual {p0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/deepalhome/launcher/music/AppleMusicFavoriteBridge$LikeState;->Companion:Lcom/deepalhome/launcher/music/AppleMusicFavoriteBridge$LikeState$Companion;

    const-string v5, "like_state"

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Lcom/deepalhome/launcher/music/AppleMusicFavoriteBridge$LikeState;->$ENTRIES:Lkotlin/enums/EnumEntriesList;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v7, Lkotlin/jvm/internal/ArrayIterator;

    const/4 v8, 0x2

    invoke-direct {v7, v8, v4}, Lkotlin/jvm/internal/ArrayIterator;-><init>(ILjava/lang/Object;)V

    :cond_1
    invoke-virtual {v7}, Lkotlin/jvm/internal/ArrayIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v7}, Lkotlin/jvm/internal/ArrayIterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v8, v4

    check-cast v8, Lcom/deepalhome/launcher/music/AppleMusicFavoriteBridge$LikeState;

    invoke-virtual {v8}, Lcom/deepalhome/launcher/music/AppleMusicFavoriteBridge$LikeState;->getValue()I

    move-result v8

    if-ne v8, v5, :cond_1

    move-object v1, v4

    :cond_2
    check-cast v1, Lcom/deepalhome/launcher/music/AppleMusicFavoriteBridge$LikeState;

    if-nez v1, :cond_3

    sget-object v1, Lcom/deepalhome/launcher/music/AppleMusicFavoriteBridge$LikeState;->Unknown:Lcom/deepalhome/launcher/music/AppleMusicFavoriteBridge$LikeState;

    :cond_3
    const-string v4, "is_favorited"

    invoke-virtual {p0, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p0

    invoke-direct {v0, v2, v3, v1, p0}, Lcom/deepalhome/launcher/music/AppleMusicFavoriteBridge$FavoriteState;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/deepalhome/launcher/music/AppleMusicFavoriteBridge$LikeState;Z)V

    return-object v0
.end method
