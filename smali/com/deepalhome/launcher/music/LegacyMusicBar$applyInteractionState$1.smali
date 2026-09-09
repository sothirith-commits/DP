.class public final Lcom/deepalhome/launcher/music/LegacyMusicBar$applyInteractionState$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# static fields
.field public static final INSTANCE:Lcom/deepalhome/launcher/music/LegacyMusicBar$applyInteractionState$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/deepalhome/launcher/music/LegacyMusicBar$applyInteractionState$1;

    invoke-direct {v0}, Lcom/deepalhome/launcher/music/LegacyMusicBar$applyInteractionState$1;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/music/LegacyMusicBar$applyInteractionState$1;->INSTANCE:Lcom/deepalhome/launcher/music/LegacyMusicBar$applyInteractionState$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    sget-object p0, Lcom/deepalhome/launcher/music/MusicManager;->INSTANCE:Lcom/deepalhome/launcher/music/MusicManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/deepalhome/launcher/music/MusicManager$nextSong$1;->INSTANCE:Lcom/deepalhome/launcher/music/MusicManager$nextSong$1;

    sget-object v0, Lcom/deepalhome/launcher/music/MusicManager$nextSong$2;->INSTANCE:Lcom/deepalhome/launcher/music/MusicManager$nextSong$2;

    invoke-static {p0, v0}, Lcom/deepalhome/launcher/music/MusicManager;->dispatchPlaybackControl(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
