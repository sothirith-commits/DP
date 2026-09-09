.class public final Lcom/deepalhome/launcher/hud/s05sr/HudSRManager$s05InfoListener$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# static fields
.field public static final INSTANCE:Lcom/deepalhome/launcher/hud/s05sr/HudSRManager$s05InfoListener$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/deepalhome/launcher/hud/s05sr/HudSRManager$s05InfoListener$1;

    invoke-direct {v0}, Lcom/deepalhome/launcher/hud/s05sr/HudSRManager$s05InfoListener$1;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/hud/s05sr/HudSRManager$s05InfoListener$1;->INSTANCE:Lcom/deepalhome/launcher/hud/s05sr/HudSRManager$s05InfoListener$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;

    check-cast p2, Ljava/util/Set;

    const-string p0, "info"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "<anonymous parameter 1>"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p0, Lcom/deepalhome/launcher/hud/s05sr/HudSRManager;->lastGearMode:Ljava/lang/String;

    iget-object p2, p1, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->gearMode:Ljava/lang/String;

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    iget-object p0, p1, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->gearMode:Ljava/lang/String;

    sput-object p0, Lcom/deepalhome/launcher/hud/s05sr/HudSRManager;->lastGearMode:Ljava/lang/String;

    sget-object p0, Lcom/deepalhome/launcher/hud/s05sr/HudSRManager;->INSTANCE:Lcom/deepalhome/launcher/hud/s05sr/HudSRManager;

    sget-object p1, Lcom/deepalhome/launcher/hud/s05sr/HudSRManager$s05InfoListener$1$1;->INSTANCE:Lcom/deepalhome/launcher/hud/s05sr/HudSRManager$s05InfoListener$1$1;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/deepalhome/launcher/hud/s05sr/HudSRManager;->dispatchOnMain(Lkotlin/jvm/functions/Function0;)V

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
