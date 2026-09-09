.class public Lcom/incall/serversdk/bluetooth/phone/ContactInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable<",
        "Lcom/incall/serversdk/bluetooth/phone/ContactInfo;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/incall/serversdk/bluetooth/phone/ContactInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static NUMBER_TYPE_BBS:Ljava/lang/String; = "NUMBER_TYPE_BBS"

.field private static NUMBER_TYPE_CAR:Ljava/lang/String; = "NUMBER_TYPE_CAR"

.field public static NUMBER_TYPE_CELL:Ljava/lang/String; = "NUMBER_TYPE_CELL"

.field private static NUMBER_TYPE_FAX:Ljava/lang/String; = "NUMBER_TYPE_FAX"

.field public static NUMBER_TYPE_HOME:Ljava/lang/String; = "NUMBER_TYPE_HOME"

.field private static NUMBER_TYPE_ISDN:Ljava/lang/String; = "NUMBER_TYPE_ISDN"

.field private static NUMBER_TYPE_MODEM:Ljava/lang/String; = "NUMBER_TYPE_MODEM"

.field private static NUMBER_TYPE_MSG:Ljava/lang/String; = "NUMBER_TYPE_MSG"

.field public static NUMBER_TYPE_OTHER:Ljava/lang/String; = "NUMBER_TYPE_OTHER"

.field private static NUMBER_TYPE_PAGER:Ljava/lang/String; = "NUMBER_TYPE_PAGER"

.field private static NUMBER_TYPE_PCS:Ljava/lang/String; = "NUMBER_TYPE_PCS"

.field private static NUMBER_TYPE_PREF:Ljava/lang/String; = "NUMBER_TYPE_PREF"

.field private static NUMBER_TYPE_VIDEO:Ljava/lang/String; = "NUMBER_TYPE_VIDEO"

.field private static NUMBER_TYPE_VOICE:Ljava/lang/String; = "NUMBER_TYPE_VOICE"

.field public static NUMBER_TYPE_WORK:Ljava/lang/String; = "NUMBER_TYPE_WORK"

.field private static final serialVersionUID:J = 0x4ed2252e79009175L


# instance fields
.field private allNumber:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private name:Ljava/lang/String;

.field private numberList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/incall/serversdk/bluetooth/phone/ContactInfo$1;

    invoke-direct {v0}, Lcom/incall/serversdk/bluetooth/phone/ContactInfo$1;-><init>()V

    sput-object v0, Lcom/incall/serversdk/bluetooth/phone/ContactInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/incall/serversdk/bluetooth/phone/ContactInfo;->name:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/incall/serversdk/bluetooth/phone/ContactInfo;->allNumber:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/incall/serversdk/bluetooth/phone/ContactInfo;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/incall/serversdk/bluetooth/phone/ContactInfo;

    invoke-virtual {p0, p1}, Lcom/incall/serversdk/bluetooth/phone/ContactInfo;->compareTo(Lcom/incall/serversdk/bluetooth/phone/ContactInfo;)I

    move-result p0

    return p0
.end method

.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getAllNumber()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/incall/serversdk/bluetooth/phone/ContactInfo;->allNumber:Ljava/util/List;

    return-object p0
.end method

.method public getCellNumbers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/incall/serversdk/bluetooth/phone/ContactInfo;->numberList:Ljava/util/HashMap;

    if-eqz p0, :cond_0

    sget-object v0, Lcom/incall/serversdk/bluetooth/phone/ContactInfo;->NUMBER_TYPE_CELL:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getHomeNumbers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/incall/serversdk/bluetooth/phone/ContactInfo;->numberList:Ljava/util/HashMap;

    if-eqz p0, :cond_0

    sget-object v0, Lcom/incall/serversdk/bluetooth/phone/ContactInfo;->NUMBER_TYPE_HOME:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/incall/serversdk/bluetooth/phone/ContactInfo;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getNumberList()Ljava/util/HashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/incall/serversdk/bluetooth/phone/ContactInfo;->numberList:Ljava/util/HashMap;

    return-object p0
.end method

.method public getOtherNumbers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/incall/serversdk/bluetooth/phone/ContactInfo;->numberList:Ljava/util/HashMap;

    if-eqz p0, :cond_0

    sget-object v0, Lcom/incall/serversdk/bluetooth/phone/ContactInfo;->NUMBER_TYPE_OTHER:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getWorkNumbers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/incall/serversdk/bluetooth/phone/ContactInfo;->numberList:Ljava/util/HashMap;

    if-eqz p0, :cond_0

    sget-object v0, Lcom/incall/serversdk/bluetooth/phone/ContactInfo;->NUMBER_TYPE_WORK:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public setAllNumber(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/incall/serversdk/bluetooth/phone/ContactInfo;->allNumber:Ljava/util/List;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/incall/serversdk/bluetooth/phone/ContactInfo;->name:Ljava/lang/String;

    return-void
.end method

.method public setNumberList(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/incall/serversdk/bluetooth/phone/ContactInfo;->numberList:Ljava/util/HashMap;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ContactInfo{name=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/incall/serversdk/bluetooth/phone/ContactInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', numberList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/incall/serversdk/bluetooth/phone/ContactInfo;->numberList:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", allNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/incall/serversdk/bluetooth/phone/ContactInfo;->allNumber:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Lcom/incall/serversdk/bluetooth/phone/ContactInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/incall/serversdk/bluetooth/phone/ContactInfo;->allNumber:Ljava/util/List;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return-void
.end method
