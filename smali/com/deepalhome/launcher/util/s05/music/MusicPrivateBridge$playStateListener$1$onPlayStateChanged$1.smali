.class public final Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge$playStateListener$1$onPlayStateChanged$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic $playState:I

.field final synthetic this$0:Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge;I)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge$playStateListener$1$onPlayStateChanged$1;->this$0:Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge;

    iput p2, p0, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge$playStateListener$1$onPlayStateChanged$1;->$playState:I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge$playStateListener$1$onPlayStateChanged$1;->this$0:Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge;

    iget p0, p0, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge$playStateListener$1$onPlayStateChanged$1;->$playState:I

    sget v1, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge;->$r8$clinit:I

    invoke-virtual {v0, p0}, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge;->handlePlayState(I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
