.class public final Lcom/tinnove/polymericservice/base/model/WTRequestModel$Companion;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/tinnove/polymericservice/base/model/WTRequestModel$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    new-instance p0, Lcom/tinnove/polymericservice/base/model/WTRequestModel;

    invoke-direct {p0, p1}, Lcom/tinnove/polymericservice/base/model/WTRequestModel;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public final newArray(I)[Ljava/lang/Object;
    .locals 0

    new-array p0, p1, [Lcom/tinnove/polymericservice/base/model/WTRequestModel;

    return-object p0
.end method
