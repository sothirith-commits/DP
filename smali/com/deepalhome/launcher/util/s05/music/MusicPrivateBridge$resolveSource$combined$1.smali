.class public final Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge$resolveSource$combined$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# static fields
.field public static final INSTANCE:Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge$resolveSource$combined$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge$resolveSource$combined$1;

    invoke-direct {v0}, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge$resolveSource$combined$1;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge$resolveSource$combined$1;->INSTANCE:Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge$resolveSource$combined$1;

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
    .locals 2

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    sget-object p0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v0, "ROOT"

    const-string v1, "toLowerCase(...)"

    invoke-static {p0, v0, p1, p0, v1}, Lcom/umeng/commonsdk/config/d$a$EnumUnboxingLocalUtility;->m(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
