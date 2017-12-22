.class Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal$UpdateDeviceCredentialHandler;
.super Ljava/lang/Object;
.source "FindDeviceStatusManagerInternal.java"

# interfaces
.implements Lcom/xiaomi/finddevice/v2/IDeviceCredentialManager$IUpdateDeviceCredentialHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UpdateDeviceCredentialHandler"
.end annotation


# instance fields
.field private final mCtx:Landroid/content/Context;

.field private mDidUpdate:Z

.field private final mIsOpen:Z

.field private mNewStatus:Lcom/xiaomi/finddevice/v2/FindDeviceStatus;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 0
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "isOpen"    # Z

    .prologue
    .line 724
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 725
    iput-object p1, p0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal$UpdateDeviceCredentialHandler;->mCtx:Landroid/content/Context;

    .line 726
    iput-boolean p2, p0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal$UpdateDeviceCredentialHandler;->mIsOpen:Z

    .line 724
    return-void
.end method


# virtual methods
.method public didUpdate()Z
    .locals 1

    .prologue
    .line 843
    iget-boolean v0, p0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal$UpdateDeviceCredentialHandler;->mDidUpdate:Z

    return v0
.end method

.method public doStatusUpdate(Lcom/xiaomi/finddevice/v2/IDeviceCredentialManager$IUpdateDeviceCredentialProvider;)V
    .locals 20
    .param p1, "provider"    # Lcom/xiaomi/finddevice/v2/IDeviceCredentialManager$IUpdateDeviceCredentialProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$BadResponseException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestPrepareException;,
            Lcom/xiaomi/finddevice/v2/net/SecurityManager$AccountException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$OperationFailedException;,
            Ljava/io/IOException;,
            Lcom/xiaomi/finddevice/common/MTService$MTServiceNotAvailableException;
        }
    .end annotation

    .prologue
    .line 741
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal$UpdateDeviceCredentialHandler;->mDidUpdate:Z

    .line 743
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal$UpdateDeviceCredentialHandler;->mCtx:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/xiaomi/finddevice/v2/net/ServerProtocol;->obtain(Landroid/content/Context;Lcom/xiaomi/finddevice/v2/IDeviceCredentialProvider;)Lcom/xiaomi/finddevice/v2/net/ServerProtocol;

    move-result-object v16

    .line 746
    .local v16, "serverProtocol":Lcom/xiaomi/finddevice/v2/net/ServerProtocol;
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal$UpdateDeviceCredentialHandler;->mIsOpen:Z

    .line 748
    .local v11, "isOldOpen":Z
    invoke-interface/range {p1 .. p1}, Lcom/xiaomi/finddevice/v2/IDeviceCredentialManager$IUpdateDeviceCredentialProvider;->switchToOld()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 750
    :try_start_1
    invoke-virtual/range {v16 .. v16}, Lcom/xiaomi/finddevice/v2/net/ServerProtocol;->status()Lcom/xiaomi/finddevice/v2/FindDeviceStatus;

    move-result-object v14

    .line 751
    .local v14, "oldStatus":Lcom/xiaomi/finddevice/v2/FindDeviceStatus;
    invoke-static {v14}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->-wrap0(Lcom/xiaomi/finddevice/v2/FindDeviceStatus;)Z

    move-result v11

    .line 753
    invoke-interface/range {p1 .. p1}, Lcom/xiaomi/finddevice/v2/IDeviceCredentialManager$IUpdateDeviceCredentialProvider;->getNew()Lcom/xiaomi/finddevice/v2/IDeviceCredential;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lcom/xiaomi/finddevice/v2/IDeviceCredential;->getOwnUserId()Ljava/lang/String;

    move-result-object v12

    .line 754
    .local v12, "newDeviceCredentialOwner":Ljava/lang/String;
    invoke-static {v14}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->-wrap1(Lcom/xiaomi/finddevice/v2/FindDeviceStatus;)Ljava/lang/String;

    move-result-object v13

    .line 760
    .local v13, "oldSessionUserId":Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_0

    .line 761
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_1
    .catch Lcom/xiaomi/finddevice/v2/net/SecurityManager$NullDeviceCredentialException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/xiaomi/finddevice/common/MTService$MTServiceNotAvailableException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Lcom/xiaomi/finddevice/v2/net/IRequestManager$BadResponseException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestPrepareException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/xiaomi/finddevice/v2/net/IRequestManager$OperationFailedException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v17

    if-eqz v17, :cond_2

    .line 795
    .end local v12    # "newDeviceCredentialOwner":Ljava/lang/String;
    .end local v13    # "oldSessionUserId":Ljava/lang/String;
    .end local v14    # "oldStatus":Lcom/xiaomi/finddevice/v2/FindDeviceStatus;
    :cond_0
    :goto_0
    :try_start_2
    invoke-interface/range {p1 .. p1}, Lcom/xiaomi/finddevice/v2/IDeviceCredentialManager$IUpdateDeviceCredentialProvider;->switchToNew()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 797
    :try_start_3
    invoke-virtual/range {v16 .. v16}, Lcom/xiaomi/finddevice/v2/net/ServerProtocol;->status()Lcom/xiaomi/finddevice/v2/FindDeviceStatus;

    move-result-object v15

    .line 798
    .local v15, "s":Lcom/xiaomi/finddevice/v2/FindDeviceStatus;
    invoke-static {v15}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->-wrap0(Lcom/xiaomi/finddevice/v2/FindDeviceStatus;)Z

    move-result v17

    if-nez v17, :cond_1

    if-eqz v11, :cond_1

    .line 799
    invoke-virtual/range {v16 .. v16}, Lcom/xiaomi/finddevice/v2/net/ServerProtocol;->bind()Lcom/xiaomi/finddevice/v2/FindDeviceStatus;

    move-result-object v15

    .line 804
    :cond_1
    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal$UpdateDeviceCredentialHandler;->mNewStatus:Lcom/xiaomi/finddevice/v2/FindDeviceStatus;
    :try_end_3
    .catch Lcom/xiaomi/finddevice/v2/net/SecurityManager$NullDeviceCredentialException; {:try_start_3 .. :try_end_3} :catch_8
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 810
    :try_start_4
    invoke-interface/range {p1 .. p1}, Lcom/xiaomi/finddevice/v2/IDeviceCredentialManager$IUpdateDeviceCredentialProvider;->switchToOld()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 812
    :try_start_5
    invoke-virtual/range {v16 .. v16}, Lcom/xiaomi/finddevice/v2/net/ServerProtocol;->unbind()V
    :try_end_5
    .catch Lcom/xiaomi/finddevice/v2/net/SecurityManager$AccountException; {:try_start_5 .. :try_end_5} :catch_10
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_f
    .catch Lcom/xiaomi/finddevice/v2/net/SecurityManager$NullDeviceCredentialException; {:try_start_5 .. :try_end_5} :catch_e
    .catch Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestPrepareException; {:try_start_5 .. :try_end_5} :catch_d
    .catch Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestException; {:try_start_5 .. :try_end_5} :catch_c
    .catch Lcom/xiaomi/finddevice/v2/net/IRequestManager$BadResponseException; {:try_start_5 .. :try_end_5} :catch_b
    .catch Lcom/xiaomi/finddevice/v2/net/IRequestManager$OperationFailedException; {:try_start_5 .. :try_end_5} :catch_a
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_9
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 837
    :goto_1
    invoke-virtual/range {v16 .. v16}, Lcom/xiaomi/finddevice/v2/net/ServerProtocol;->release()V

    .line 738
    return-void

    .line 762
    .end local v15    # "s":Lcom/xiaomi/finddevice/v2/FindDeviceStatus;
    .restart local v12    # "newDeviceCredentialOwner":Ljava/lang/String;
    .restart local v13    # "oldSessionUserId":Ljava/lang/String;
    .restart local v14    # "oldStatus":Lcom/xiaomi/finddevice/v2/FindDeviceStatus;
    :cond_2
    :try_start_6
    invoke-static {v12, v13}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_0

    .line 763
    const/16 v17, 0x5

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    .line 764
    const-string/jumbo v18, "newDeviceCredentialOwner does not match oldSessionUserId. Refuse to update device credential. "

    const/16 v19, 0x0

    aput-object v18, v17, v19

    .line 765
    const-string/jumbo v18, "newDeviceCredentialOwner: "

    const/16 v19, 0x1

    aput-object v18, v17, v19

    const/16 v18, 0x2

    aput-object v12, v17, v18

    .line 766
    const-string/jumbo v18, "oldSessionUserId:"

    const/16 v19, 0x3

    aput-object v18, v17, v19

    const/16 v18, 0x4

    aput-object v13, v17, v18

    .line 763
    invoke-static/range {v17 .. v17}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    .line 767
    new-instance v17, Lcom/xiaomi/finddevice/v2/net/SecurityManager$AccountException;

    const-string/jumbo v18, "Illegal account. "

    invoke-direct/range {v17 .. v18}, Lcom/xiaomi/finddevice/v2/net/SecurityManager$AccountException;-><init>(Ljava/lang/String;)V

    throw v17
    :try_end_6
    .catch Lcom/xiaomi/finddevice/v2/net/SecurityManager$NullDeviceCredentialException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Lcom/xiaomi/finddevice/common/MTService$MTServiceNotAvailableException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Lcom/xiaomi/finddevice/v2/net/IRequestManager$BadResponseException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestPrepareException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Lcom/xiaomi/finddevice/v2/net/IRequestManager$OperationFailedException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 770
    .end local v12    # "newDeviceCredentialOwner":Ljava/lang/String;
    .end local v13    # "oldSessionUserId":Ljava/lang/String;
    .end local v14    # "oldStatus":Lcom/xiaomi/finddevice/v2/FindDeviceStatus;
    :catch_0
    move-exception v8

    .line 771
    .local v8, "e":Lcom/xiaomi/finddevice/v2/net/SecurityManager$NullDeviceCredentialException;
    const/16 v17, 0x2

    :try_start_7
    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v8, v17, v18

    const-string/jumbo v18, "Failed to get old status. IGNORE. "

    const/16 v19, 0x1

    aput-object v18, v17, v19

    invoke-static/range {v17 .. v17}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_0

    .line 836
    .end local v8    # "e":Lcom/xiaomi/finddevice/v2/net/SecurityManager$NullDeviceCredentialException;
    .end local v11    # "isOldOpen":Z
    :catchall_0
    move-exception v17

    .line 837
    invoke-virtual/range {v16 .. v16}, Lcom/xiaomi/finddevice/v2/net/ServerProtocol;->release()V

    .line 836
    throw v17

    .line 789
    .restart local v11    # "isOldOpen":Z
    :catch_1
    move-exception v9

    .line 790
    .local v9, "e":Ljava/io/IOException;
    const/16 v17, 0x2

    :try_start_8
    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v9, v17, v18

    const-string/jumbo v18, "Failed to get old status. THROW. "

    const/16 v19, 0x1

    aput-object v18, v17, v19

    invoke-static/range {v17 .. v17}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 791
    throw v9

    .line 787
    .end local v9    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v4

    .line 788
    .local v4, "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$OperationFailedException;
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v4, v17, v18

    const-string/jumbo v18, "Failed to get old status. IGNORE. "

    const/16 v19, 0x1

    aput-object v18, v17, v19

    invoke-static/range {v17 .. v17}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 784
    .end local v4    # "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$OperationFailedException;
    :catch_3
    move-exception v6

    .line 785
    .local v6, "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestPrepareException;
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v6, v17, v18

    const-string/jumbo v18, "Failed to get old status. THROW. "

    const/16 v19, 0x1

    aput-object v18, v17, v19

    invoke-static/range {v17 .. v17}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 786
    throw v6

    .line 781
    .end local v6    # "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestPrepareException;
    :catch_4
    move-exception v5

    .line 782
    .local v5, "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestException;
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v5, v17, v18

    const-string/jumbo v18, "Failed to get old status. THROW. "

    const/16 v19, 0x1

    aput-object v18, v17, v19

    invoke-static/range {v17 .. v17}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 783
    throw v5

    .line 778
    .end local v5    # "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestException;
    :catch_5
    move-exception v3

    .line 779
    .local v3, "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$BadResponseException;
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v3, v17, v18

    const-string/jumbo v18, "Failed to get old status. THROW. "

    const/16 v19, 0x1

    aput-object v18, v17, v19

    invoke-static/range {v17 .. v17}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 780
    throw v3

    .line 775
    .end local v3    # "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$BadResponseException;
    :catch_6
    move-exception v10

    .line 776
    .local v10, "e":Ljava/lang/InterruptedException;
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v10, v17, v18

    const-string/jumbo v18, "Failed to get old status. THROW. "

    const/16 v19, 0x1

    aput-object v18, v17, v19

    invoke-static/range {v17 .. v17}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 777
    throw v10

    .line 772
    .end local v10    # "e":Ljava/lang/InterruptedException;
    :catch_7
    move-exception v2

    .line 773
    .local v2, "e":Lcom/xiaomi/finddevice/common/MTService$MTServiceNotAvailableException;
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v2, v17, v18

    const-string/jumbo v18, "Failed to get old status. THROW. "

    const/16 v19, 0x1

    aput-object v18, v17, v19

    invoke-static/range {v17 .. v17}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 774
    throw v2

    .line 805
    .end local v2    # "e":Lcom/xiaomi/finddevice/common/MTService$MTServiceNotAvailableException;
    :catch_8
    move-exception v8

    .line 806
    .restart local v8    # "e":Lcom/xiaomi/finddevice/v2/net/SecurityManager$NullDeviceCredentialException;
    new-instance v17, Ljava/lang/IllegalStateException;

    .line 807
    const-string/jumbo v18, "Device credential never updates to null. "

    .line 806
    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 831
    .end local v8    # "e":Lcom/xiaomi/finddevice/v2/net/SecurityManager$NullDeviceCredentialException;
    .restart local v15    # "s":Lcom/xiaomi/finddevice/v2/FindDeviceStatus;
    :catch_9
    move-exception v9

    .line 832
    .restart local v9    # "e":Ljava/io/IOException;
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v9, v17, v18

    const-string/jumbo v18, "Failed to unbind old. THROW. "

    const/16 v19, 0x1

    aput-object v18, v17, v19

    invoke-static/range {v17 .. v17}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 833
    throw v9

    .line 829
    .end local v9    # "e":Ljava/io/IOException;
    :catch_a
    move-exception v4

    .line 830
    .restart local v4    # "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$OperationFailedException;
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v4, v17, v18

    const-string/jumbo v18, "Failed to unbind old. IGNORE. "

    const/16 v19, 0x1

    aput-object v18, v17, v19

    invoke-static/range {v17 .. v17}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 826
    .end local v4    # "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$OperationFailedException;
    :catch_b
    move-exception v3

    .line 827
    .restart local v3    # "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$BadResponseException;
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v3, v17, v18

    const-string/jumbo v18, "Failed to unbind old. THROW. "

    const/16 v19, 0x1

    aput-object v18, v17, v19

    invoke-static/range {v17 .. v17}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 828
    throw v3

    .line 823
    .end local v3    # "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$BadResponseException;
    :catch_c
    move-exception v5

    .line 824
    .restart local v5    # "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestException;
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v5, v17, v18

    const-string/jumbo v18, "Failed to unbind old. THROW. "

    const/16 v19, 0x1

    aput-object v18, v17, v19

    invoke-static/range {v17 .. v17}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 825
    throw v5

    .line 820
    .end local v5    # "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestException;
    :catch_d
    move-exception v6

    .line 821
    .restart local v6    # "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestPrepareException;
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v6, v17, v18

    const-string/jumbo v18, "Failed to unbind old. THROW. "

    const/16 v19, 0x1

    aput-object v18, v17, v19

    invoke-static/range {v17 .. v17}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 822
    throw v6

    .line 818
    .end local v6    # "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestPrepareException;
    :catch_e
    move-exception v8

    .line 819
    .restart local v8    # "e":Lcom/xiaomi/finddevice/v2/net/SecurityManager$NullDeviceCredentialException;
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v8, v17, v18

    const-string/jumbo v18, "Failed to unbind old. IGNORE. "

    const/16 v19, 0x1

    aput-object v18, v17, v19

    invoke-static/range {v17 .. v17}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 815
    .end local v8    # "e":Lcom/xiaomi/finddevice/v2/net/SecurityManager$NullDeviceCredentialException;
    :catch_f
    move-exception v10

    .line 816
    .restart local v10    # "e":Ljava/lang/InterruptedException;
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v10, v17, v18

    const-string/jumbo v18, "Failed to unbind old. THROW. "

    const/16 v19, 0x1

    aput-object v18, v17, v19

    invoke-static/range {v17 .. v17}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 817
    throw v10

    .line 813
    .end local v10    # "e":Ljava/lang/InterruptedException;
    :catch_10
    move-exception v7

    .line 814
    .local v7, "e":Lcom/xiaomi/finddevice/v2/net/SecurityManager$AccountException;
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v7, v17, v18

    const-string/jumbo v18, "Failed to unbind old. IGNORE. "

    const/16 v19, 0x1

    aput-object v18, v17, v19

    invoke-static/range {v17 .. v17}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_1
.end method

.method public getNewStatus()Lcom/xiaomi/finddevice/v2/FindDeviceStatus;
    .locals 1

    .prologue
    .line 847
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal$UpdateDeviceCredentialHandler;->mNewStatus:Lcom/xiaomi/finddevice/v2/FindDeviceStatus;

    return-object v0
.end method
