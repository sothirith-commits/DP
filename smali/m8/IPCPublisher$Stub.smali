.class public abstract Lm8/IPCPublisher$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lm8/IPCPublisher;


# static fields
.field public static final synthetic $r8$clinit:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.tinnove.navi.skill.IPCPublisher"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public final onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    const v3, 0x5f4e5446

    const/4 v4, 0x1

    const-string v5, "com.tinnove.navi.skill.IPCPublisher"

    if-ne v1, v3, :cond_0

    move-object/from16 v3, p3

    invoke-virtual {v3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v4

    :cond_0
    move-object/from16 v3, p3

    const-string v6, "com.tinnove.navi.skill.observer.IPCLoginStatusObserver"

    const-string v7, "com.tinnove.navi.skill.observer.IPCHiCarEnableStateObserver"

    const-string v8, "com.tinnove.navi.skill.observer.IPCEHPObserver"

    const-string v9, "com.tinnove.navi.skill.observer.IPCForecastObserver"

    const-string v10, "com.tinnove.navi.skill.observer.IPCCarPositionObserver"

    const-string v11, "com.tinnove.navi.skill.observer.IPCTTSObserver"

    const-string v12, "com.tinnove.navi.skill.observer.IPCGuideModeObserver"

    const-string v13, "com.tinnove.navi.skill.observer.IPCGuideInfoObserver"

    const-string v14, "com.tinnove.navi.skill.observer.IPCAppLifecycleObserver"

    const-string v15, "com.tinnove.navi.skill.observer.IPCAppBusinessStateObserver"

    const-string v4, "com.tinnove.navi.skill.observer.IPCTeamInfoObserver"

    const-string v3, "com.tinnove.navi.skill.observer.IPCFavoriteRecordObserver"

    move-object/from16 v16, v6

    const-string v6, "com.tinnove.navi.skill.observer.IPCMainPathChangeObserver"

    move-object/from16 v17, v7

    const-string v7, "com.tinnove.navi.skill.observer.IPCPushMessageObserver"

    const/16 v18, 0x0

    packed-switch v1, :pswitch_data_0

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :pswitch_0
    invoke-virtual {v2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v1, v7}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    if-eqz v1, :cond_3

    instance-of v2, v1, Ln8/IPCPushMessageObserver;

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    check-cast v1, Ln8/IPCPushMessageObserver;

    :cond_3
    :goto_0
    invoke-interface/range {p0 .. p0}, Lm8/IPCPublisher;->unsubscribePushMessage()V

    :goto_1
    const/4 v0, 0x1

    return v0

    :pswitch_1
    invoke-virtual {v2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_4

    :goto_2
    move-object/from16 v1, v18

    goto :goto_5

    :cond_4
    invoke-interface {v1, v7}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    if-eqz v2, :cond_6

    instance-of v3, v2, Ln8/IPCPushMessageObserver;

    if-nez v3, :cond_5

    goto :goto_4

    :cond_5
    check-cast v2, Ln8/IPCPushMessageObserver;

    :goto_3
    move-object/from16 v18, v2

    goto :goto_2

    :cond_6
    :goto_4
    new-instance v2, Ln8/IPCPushMessageObserver$Stub$Proxy;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v1, v2, Ln8/IPCPushMessageObserver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    goto :goto_3

    :goto_5
    invoke-interface {v0, v1}, Lm8/IPCPublisher;->subscribePushMessage(Ln8/IPCPushMessageObserver;)V

    goto :goto_1

    :pswitch_2
    invoke-virtual {v2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_7

    goto :goto_6

    :cond_7
    invoke-interface {v1, v6}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    if-eqz v1, :cond_9

    instance-of v2, v1, Ln8/IPCMainPathChangeObserver;

    if-nez v2, :cond_8

    goto :goto_6

    :cond_8
    check-cast v1, Ln8/IPCMainPathChangeObserver;

    :cond_9
    :goto_6
    invoke-interface/range {p0 .. p0}, Lm8/IPCPublisher;->unsubscribeMainPathChange()V

    goto :goto_1

    :pswitch_3
    invoke-virtual {v2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_a

    goto :goto_7

    :cond_a
    invoke-interface {v1, v3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    if-eqz v1, :cond_c

    instance-of v2, v1, Ln8/IPCFavoriteRecordObserver;

    if-nez v2, :cond_b

    goto :goto_7

    :cond_b
    check-cast v1, Ln8/IPCFavoriteRecordObserver;

    :cond_c
    :goto_7
    invoke-interface/range {p0 .. p0}, Lm8/IPCPublisher;->unsubscribeFavoriteRecord()V

    goto :goto_1

    :pswitch_4
    invoke-virtual {v2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_d

    goto :goto_8

    :cond_d
    invoke-interface {v1, v4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    if-eqz v1, :cond_f

    instance-of v2, v1, Ln8/IPCTeamInfoObserver;

    if-nez v2, :cond_e

    goto :goto_8

    :cond_e
    check-cast v1, Ln8/IPCTeamInfoObserver;

    :cond_f
    :goto_8
    invoke-interface/range {p0 .. p0}, Lm8/IPCPublisher;->unsubscribeTeamInfo()V

    goto :goto_1

    :pswitch_5
    invoke-virtual {v2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_10

    goto :goto_9

    :cond_10
    invoke-interface {v1, v15}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    if-eqz v1, :cond_12

    instance-of v2, v1, Ln8/IPCAppBusinessStateObserver;

    if-nez v2, :cond_11

    goto :goto_9

    :cond_11
    check-cast v1, Ln8/IPCAppBusinessStateObserver;

    :cond_12
    :goto_9
    invoke-interface/range {p0 .. p0}, Lm8/IPCPublisher;->unsubscribeAppBusinessState()V

    goto/16 :goto_1

    :pswitch_6
    invoke-virtual {v2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_13

    goto :goto_a

    :cond_13
    invoke-interface {v1, v14}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    if-eqz v1, :cond_15

    instance-of v2, v1, Ln8/IPCAppLifecycleObserver;

    if-nez v2, :cond_14

    goto :goto_a

    :cond_14
    check-cast v1, Ln8/IPCAppLifecycleObserver;

    :cond_15
    :goto_a
    invoke-interface/range {p0 .. p0}, Lm8/IPCPublisher;->unsubscribeAppLifecycle()V

    goto/16 :goto_1

    :pswitch_7
    invoke-virtual {v2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_16

    goto :goto_b

    :cond_16
    invoke-interface {v1, v13}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    if-eqz v1, :cond_18

    instance-of v2, v1, Ln8/IPCGuideInfoObserver;

    if-nez v2, :cond_17

    goto :goto_b

    :cond_17
    check-cast v1, Ln8/IPCGuideInfoObserver;

    :cond_18
    :goto_b
    invoke-interface/range {p0 .. p0}, Lm8/IPCPublisher;->unsubscribeGuideInfo()V

    goto/16 :goto_1

    :pswitch_8
    invoke-virtual {v2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_19

    goto :goto_c

    :cond_19
    invoke-interface {v1, v12}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    if-eqz v1, :cond_1b

    instance-of v2, v1, Ln8/IPCGuideModeObserver;

    if-nez v2, :cond_1a

    goto :goto_c

    :cond_1a
    check-cast v1, Ln8/IPCGuideModeObserver;

    :cond_1b
    :goto_c
    invoke-interface/range {p0 .. p0}, Lm8/IPCPublisher;->unsubscribeGuideMode()V

    goto/16 :goto_1

    :pswitch_9
    invoke-virtual {v2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_1c

    goto :goto_d

    :cond_1c
    invoke-interface {v1, v11}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    if-eqz v1, :cond_1e

    instance-of v2, v1, Ln8/IPCTTSObserver;

    if-nez v2, :cond_1d

    goto :goto_d

    :cond_1d
    check-cast v1, Ln8/IPCTTSObserver;

    :cond_1e
    :goto_d
    invoke-interface/range {p0 .. p0}, Lm8/IPCPublisher;->unsubscribeTTS()V

    goto/16 :goto_1

    :pswitch_a
    invoke-virtual {v2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_1f

    goto :goto_e

    :cond_1f
    invoke-interface {v1, v10}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    if-eqz v1, :cond_21

    instance-of v2, v1, Ln8/IPCCarPositionObserver;

    if-nez v2, :cond_20

    goto :goto_e

    :cond_20
    check-cast v1, Ln8/IPCCarPositionObserver;

    :cond_21
    :goto_e
    invoke-interface/range {p0 .. p0}, Lm8/IPCPublisher;->unsubscribeCarPosition()V

    goto/16 :goto_1

    :pswitch_b
    invoke-virtual {v2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_22

    goto :goto_f

    :cond_22
    invoke-interface {v1, v9}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    if-eqz v1, :cond_24

    instance-of v2, v1, Ln8/IPCForecastObserver;

    if-nez v2, :cond_23

    goto :goto_f

    :cond_23
    check-cast v1, Ln8/IPCForecastObserver;

    :cond_24
    :goto_f
    invoke-interface/range {p0 .. p0}, Lm8/IPCPublisher;->unsubscribeBehaviorPrediction()V

    goto/16 :goto_1

    :pswitch_c
    invoke-virtual {v2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_25

    goto :goto_10

    :cond_25
    invoke-interface {v1, v8}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    if-eqz v1, :cond_27

    instance-of v2, v1, Ln8/IPCEHPObserver;

    if-nez v2, :cond_26

    goto :goto_10

    :cond_26
    check-cast v1, Ln8/IPCEHPObserver;

    :cond_27
    :goto_10
    invoke-interface/range {p0 .. p0}, Lm8/IPCPublisher;->unsubscribeEHP()V

    goto/16 :goto_1

    :pswitch_d
    invoke-virtual {v2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_28

    goto :goto_11

    :cond_28
    move-object/from16 v3, v17

    invoke-interface {v1, v3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    if-eqz v1, :cond_2a

    instance-of v2, v1, Ln8/IPCHiCarEnableStateObserver;

    if-nez v2, :cond_29

    goto :goto_11

    :cond_29
    check-cast v1, Ln8/IPCHiCarEnableStateObserver;

    :cond_2a
    :goto_11
    invoke-interface/range {p0 .. p0}, Lm8/IPCPublisher;->unsubscribeHiCarEnableState()V

    goto/16 :goto_1

    :pswitch_e
    invoke-virtual {v2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_2b

    goto :goto_12

    :cond_2b
    move-object/from16 v3, v16

    invoke-interface {v1, v3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    if-eqz v1, :cond_2d

    instance-of v2, v1, Ln8/IPCLoginStatusObserver;

    if-nez v2, :cond_2c

    goto :goto_12

    :cond_2c
    check-cast v1, Ln8/IPCLoginStatusObserver;

    :cond_2d
    :goto_12
    invoke-interface/range {p0 .. p0}, Lm8/IPCPublisher;->unsubscribeLoginStatus()V

    goto/16 :goto_1

    :pswitch_f
    invoke-virtual {v2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_2e

    :goto_13
    move-object/from16 v1, v18

    goto :goto_16

    :cond_2e
    invoke-interface {v1, v6}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    if-eqz v2, :cond_30

    instance-of v3, v2, Ln8/IPCMainPathChangeObserver;

    if-nez v3, :cond_2f

    goto :goto_15

    :cond_2f
    check-cast v2, Ln8/IPCMainPathChangeObserver;

    :goto_14
    move-object/from16 v18, v2

    goto :goto_13

    :cond_30
    :goto_15
    new-instance v2, Ln8/IPCMainPathChangeObserver$Stub$Proxy;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v1, v2, Ln8/IPCMainPathChangeObserver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    goto :goto_14

    :goto_16
    invoke-interface {v0, v1}, Lm8/IPCPublisher;->subscribeMainPathChange(Ln8/IPCMainPathChangeObserver;)V

    goto/16 :goto_1

    :pswitch_10
    invoke-virtual {v2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_31

    goto :goto_17

    :cond_31
    invoke-interface {v1, v3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    if-eqz v1, :cond_33

    instance-of v2, v1, Ln8/IPCFavoriteRecordObserver;

    if-nez v2, :cond_32

    goto :goto_17

    :cond_32
    check-cast v1, Ln8/IPCFavoriteRecordObserver;

    :cond_33
    :goto_17
    invoke-interface/range {p0 .. p0}, Lm8/IPCPublisher;->subscribeFavoriteRecord()V

    goto/16 :goto_1

    :pswitch_11
    invoke-virtual {v2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_34

    goto :goto_18

    :cond_34
    invoke-interface {v1, v4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    if-eqz v1, :cond_36

    instance-of v2, v1, Ln8/IPCTeamInfoObserver;

    if-nez v2, :cond_35

    goto :goto_18

    :cond_35
    check-cast v1, Ln8/IPCTeamInfoObserver;

    :cond_36
    :goto_18
    invoke-interface/range {p0 .. p0}, Lm8/IPCPublisher;->subscribeTeamInfo()V

    goto/16 :goto_1

    :pswitch_12
    invoke-virtual {v2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_37

    goto :goto_19

    :cond_37
    invoke-interface {v1, v15}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    if-eqz v1, :cond_39

    instance-of v2, v1, Ln8/IPCAppBusinessStateObserver;

    if-nez v2, :cond_38

    goto :goto_19

    :cond_38
    check-cast v1, Ln8/IPCAppBusinessStateObserver;

    :cond_39
    :goto_19
    invoke-interface/range {p0 .. p0}, Lm8/IPCPublisher;->subscribeAppBusinessState()V

    goto/16 :goto_1

    :pswitch_13
    invoke-virtual {v2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_3a

    goto :goto_1a

    :cond_3a
    invoke-interface {v1, v14}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    if-eqz v1, :cond_3c

    instance-of v2, v1, Ln8/IPCAppLifecycleObserver;

    if-nez v2, :cond_3b

    goto :goto_1a

    :cond_3b
    check-cast v1, Ln8/IPCAppLifecycleObserver;

    :cond_3c
    :goto_1a
    invoke-interface/range {p0 .. p0}, Lm8/IPCPublisher;->subscribeAppLifecycle()V

    goto/16 :goto_1

    :pswitch_14
    invoke-virtual {v2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_3d

    :goto_1b
    move-object/from16 v1, v18

    goto :goto_1e

    :cond_3d
    invoke-interface {v1, v13}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    if-eqz v2, :cond_3f

    instance-of v3, v2, Ln8/IPCGuideInfoObserver;

    if-nez v3, :cond_3e

    goto :goto_1d

    :cond_3e
    check-cast v2, Ln8/IPCGuideInfoObserver;

    :goto_1c
    move-object/from16 v18, v2

    goto :goto_1b

    :cond_3f
    :goto_1d
    new-instance v2, Ln8/IPCGuideInfoObserver$Stub$Proxy;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v1, v2, Ln8/IPCGuideInfoObserver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    goto :goto_1c

    :goto_1e
    invoke-interface {v0, v1}, Lm8/IPCPublisher;->subscribeGuideInfo(Ln8/IPCGuideInfoObserver;)V

    goto/16 :goto_1

    :pswitch_15
    invoke-virtual {v2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_40

    goto :goto_1f

    :cond_40
    invoke-interface {v1, v12}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    if-eqz v1, :cond_42

    instance-of v2, v1, Ln8/IPCGuideModeObserver;

    if-nez v2, :cond_41

    goto :goto_1f

    :cond_41
    check-cast v1, Ln8/IPCGuideModeObserver;

    :cond_42
    :goto_1f
    invoke-interface/range {p0 .. p0}, Lm8/IPCPublisher;->subscribeGuideMode()V

    goto/16 :goto_1

    :pswitch_16
    invoke-virtual {v2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_43

    goto :goto_20

    :cond_43
    invoke-interface {v1, v11}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    if-eqz v1, :cond_45

    instance-of v2, v1, Ln8/IPCTTSObserver;

    if-nez v2, :cond_44

    goto :goto_20

    :cond_44
    check-cast v1, Ln8/IPCTTSObserver;

    :cond_45
    :goto_20
    invoke-interface/range {p0 .. p0}, Lm8/IPCPublisher;->subscribeTTS()V

    goto/16 :goto_1

    :pswitch_17
    invoke-virtual {v2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_46

    goto :goto_21

    :cond_46
    invoke-interface {v1, v10}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    if-eqz v1, :cond_48

    instance-of v2, v1, Ln8/IPCCarPositionObserver;

    if-nez v2, :cond_47

    goto :goto_21

    :cond_47
    check-cast v1, Ln8/IPCCarPositionObserver;

    :cond_48
    :goto_21
    invoke-interface/range {p0 .. p0}, Lm8/IPCPublisher;->subscribeCarPosition()V

    goto/16 :goto_1

    :pswitch_18
    invoke-virtual {v2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_49

    :goto_22
    move-object/from16 v1, v18

    goto :goto_25

    :cond_49
    invoke-interface {v1, v9}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    if-eqz v2, :cond_4b

    instance-of v3, v2, Ln8/IPCForecastObserver;

    if-nez v3, :cond_4a

    goto :goto_24

    :cond_4a
    check-cast v2, Ln8/IPCForecastObserver;

    :goto_23
    move-object/from16 v18, v2

    goto :goto_22

    :cond_4b
    :goto_24
    new-instance v2, Ln8/IPCForecastObserver$Stub$Proxy;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v1, v2, Ln8/IPCForecastObserver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    goto :goto_23

    :goto_25
    invoke-interface {v0, v1}, Lm8/IPCPublisher;->subscribeBehaviorPrediction(Ln8/IPCForecastObserver;)V

    goto/16 :goto_1

    :pswitch_19
    invoke-virtual {v2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_4c

    goto :goto_26

    :cond_4c
    invoke-interface {v1, v8}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    if-eqz v1, :cond_4e

    instance-of v2, v1, Ln8/IPCEHPObserver;

    if-nez v2, :cond_4d

    goto :goto_26

    :cond_4d
    check-cast v1, Ln8/IPCEHPObserver;

    :cond_4e
    :goto_26
    invoke-interface/range {p0 .. p0}, Lm8/IPCPublisher;->subscribeEHP()V

    goto/16 :goto_1

    :pswitch_1a
    move-object/from16 v3, v17

    invoke-virtual {v2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_4f

    goto :goto_27

    :cond_4f
    invoke-interface {v1, v3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    if-eqz v1, :cond_51

    instance-of v2, v1, Ln8/IPCHiCarEnableStateObserver;

    if-nez v2, :cond_50

    goto :goto_27

    :cond_50
    check-cast v1, Ln8/IPCHiCarEnableStateObserver;

    :cond_51
    :goto_27
    invoke-interface/range {p0 .. p0}, Lm8/IPCPublisher;->subscribeHiCarEnableState()V

    goto/16 :goto_1

    :pswitch_1b
    move-object/from16 v3, v16

    invoke-virtual {v2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_52

    goto :goto_28

    :cond_52
    invoke-interface {v1, v3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    if-eqz v1, :cond_54

    instance-of v2, v1, Ln8/IPCLoginStatusObserver;

    if-nez v2, :cond_53

    goto :goto_28

    :cond_53
    check-cast v1, Ln8/IPCLoginStatusObserver;

    :cond_54
    :goto_28
    invoke-interface/range {p0 .. p0}, Lm8/IPCPublisher;->subscribeLoginStatus()V

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
