.class public final Lcom/deepalhome/launcher/map/MapUtil$Companion$chargeKeyword$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# static fields
.field public static final INSTANCE:Lcom/deepalhome/launcher/map/MapUtil$Companion$chargeKeyword$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/deepalhome/launcher/map/MapUtil$Companion$chargeKeyword$2;

    invoke-direct {v0}, Lcom/deepalhome/launcher/map/MapUtil$Companion$chargeKeyword$2;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/map/MapUtil$Companion$chargeKeyword$2;->INSTANCE:Lcom/deepalhome/launcher/map/MapUtil$Companion$chargeKeyword$2;

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

    const p0, 0x7f1302f8

    const-string v0, "getString(...)"

    invoke-static {p0, v0}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
