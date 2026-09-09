.class public final Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge$musicChangeListener$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic $info:Lcom/wt/musicsdk/MusicInfo;

.field final synthetic this$0:Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge;Lcom/wt/musicsdk/MusicInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge$musicChangeListener$1$1;->this$0:Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge;

    iput-object p2, p0, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge$musicChangeListener$1$1;->$info:Lcom/wt/musicsdk/MusicInfo;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge$musicChangeListener$1$1;->this$0:Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge;

    iget-object v0, v0, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge;->listener:Lcom/deepalhome/launcher/music/MusicManager$ensurePrivateProtocol$1;

    iget-object v1, p0, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge$musicChangeListener$1$1;->$info:Lcom/wt/musicsdk/MusicInfo;

    const-string v2, "$info"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v1}, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge;->resolveSource(Lcom/wt/musicsdk/MusicInfo;)Lcom/deepalhome/launcher/util/s05/music/MusicSource;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge$musicChangeListener$1$1;->this$0:Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge;

    iget-object p0, p0, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge$musicChangeListener$1$1;->$info:Lcom/wt/musicsdk/MusicInfo;

    invoke-static {v2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, p0}, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge;->dispatchMusicInfo(Lcom/wt/musicsdk/MusicInfo;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
