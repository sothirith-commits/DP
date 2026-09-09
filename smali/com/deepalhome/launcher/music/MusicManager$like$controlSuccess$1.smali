.class public final Lcom/deepalhome/launcher/music/MusicManager$like$controlSuccess$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# static fields
.field public static final INSTANCE:Lcom/deepalhome/launcher/music/MusicManager$like$controlSuccess$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/deepalhome/launcher/music/MusicManager$like$controlSuccess$1;

    invoke-direct {v0}, Lcom/deepalhome/launcher/music/MusicManager$like$controlSuccess$1;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/music/MusicManager$like$controlSuccess$1;->INSTANCE:Lcom/deepalhome/launcher/music/MusicManager$like$controlSuccess$1;

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
    .locals 1

    check-cast p1, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge;

    const-string p0, "$this$tryPrivateControl"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p1, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge;->addFavorMethod$delegate:Lkotlin/SynchronizedLazyImpl;

    invoke-virtual {p0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/reflect/Method;

    const-string v0, "addFavor"

    invoke-virtual {p1, p0, v0}, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge;->invokeControlMethod(Ljava/lang/reflect/Method;Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
