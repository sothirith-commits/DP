.class public final Lcom/deepalhome/launcher/music/MusicManager$play$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# static fields
.field public static final INSTANCE:Lcom/deepalhome/launcher/music/MusicManager$play$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/deepalhome/launcher/music/MusicManager$play$2;

    invoke-direct {v0}, Lcom/deepalhome/launcher/music/MusicManager$play$2;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/music/MusicManager$play$2;->INSTANCE:Lcom/deepalhome/launcher/music/MusicManager$play$2;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/media/session/MediaController$TransportControls;

    const-string p0, "$this$dispatchPlaybackControl"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/media/session/MediaController$TransportControls;->play()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
