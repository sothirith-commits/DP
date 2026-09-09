.class public final enum Lcom/incall/serversdk/network/define/DialogType;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/incall/serversdk/network/define/DialogType;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field private static final $VALUES:[Lcom/incall/serversdk/network/define/DialogType;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/incall/serversdk/network/define/DialogType;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum NETWORK_UNREACHABLE:Lcom/incall/serversdk/network/define/DialogType;

.field public static final enum TSPCONNECTFAILURE:Lcom/incall/serversdk/network/define/DialogType;

.field public static final enum TUID_NOT_EXISTS:Lcom/incall/serversdk/network/define/DialogType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/incall/serversdk/network/define/DialogType;

    const-string v1, "NETWORK_UNREACHABLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/incall/serversdk/network/define/DialogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/incall/serversdk/network/define/DialogType;->NETWORK_UNREACHABLE:Lcom/incall/serversdk/network/define/DialogType;

    new-instance v1, Lcom/incall/serversdk/network/define/DialogType;

    const-string v2, "TSPCONNECTFAILURE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/incall/serversdk/network/define/DialogType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/incall/serversdk/network/define/DialogType;->TSPCONNECTFAILURE:Lcom/incall/serversdk/network/define/DialogType;

    new-instance v2, Lcom/incall/serversdk/network/define/DialogType;

    const-string v3, "TUID_NOT_EXISTS"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/incall/serversdk/network/define/DialogType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/incall/serversdk/network/define/DialogType;->TUID_NOT_EXISTS:Lcom/incall/serversdk/network/define/DialogType;

    filled-new-array {v0, v1, v2}, [Lcom/incall/serversdk/network/define/DialogType;

    move-result-object v0

    sput-object v0, Lcom/incall/serversdk/network/define/DialogType;->$VALUES:[Lcom/incall/serversdk/network/define/DialogType;

    new-instance v0, Lcom/incall/serversdk/network/define/DialogType$1;

    invoke-direct {v0}, Lcom/incall/serversdk/network/define/DialogType$1;-><init>()V

    sput-object v0, Lcom/incall/serversdk/network/define/DialogType;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/incall/serversdk/network/define/DialogType;
    .locals 1

    const-class v0, Lcom/incall/serversdk/network/define/DialogType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/incall/serversdk/network/define/DialogType;

    return-object p0
.end method

.method public static values()[Lcom/incall/serversdk/network/define/DialogType;
    .locals 1

    sget-object v0, Lcom/incall/serversdk/network/define/DialogType;->$VALUES:[Lcom/incall/serversdk/network/define/DialogType;

    invoke-virtual {v0}, [Lcom/incall/serversdk/network/define/DialogType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/incall/serversdk/network/define/DialogType;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
