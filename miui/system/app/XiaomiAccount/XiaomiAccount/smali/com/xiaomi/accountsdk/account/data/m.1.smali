.class public Lcom/xiaomi/accountsdk/account/data/m;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private RA:Ljava/lang/String;

.field private RB:Ljava/lang/String;

.field private RC:Ljava/lang/String;

.field private RD:Ljava/lang/String;

.field private Rq:Ljava/lang/String;

.field private Rr:Ljava/util/Calendar;

.field private Rs:Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;

.field private Rt:Ljava/lang/String;

.field private Ru:Lcom/xiaomi/accountsdk/account/data/Gender;

.field private Rv:Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;

.field private Rw:Z

.field private Rx:Ljava/lang/String;

.field private Ry:Ljava/lang/String;

.field private Rz:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mUserId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/m;->mUserId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public WW(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/m;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/m;->Rq:Ljava/lang/String;

    return-object p0
.end method

.method public WX(Ljava/util/Calendar;)Lcom/xiaomi/accountsdk/account/data/m;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/m;->Rr:Ljava/util/Calendar;

    return-object p0
.end method

.method public WY(Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;)Lcom/xiaomi/accountsdk/account/data/m;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/m;->Rs:Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;

    return-object p0
.end method

.method public WZ(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/m;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/m;->Rt:Ljava/lang/String;

    return-object p0
.end method

.method public Xa(Lcom/xiaomi/accountsdk/account/data/Gender;)Lcom/xiaomi/accountsdk/account/data/m;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/m;->Ru:Lcom/xiaomi/accountsdk/account/data/Gender;

    return-object p0
.end method

.method public Xb(Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;)Lcom/xiaomi/accountsdk/account/data/m;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/m;->Rv:Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;

    return-object p0
.end method

.method public Xc(Z)Lcom/xiaomi/accountsdk/account/data/m;
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/accountsdk/account/data/m;->Rw:Z

    return-object p0
.end method

.method public Xd(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/m;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/m;->Rx:Ljava/lang/String;

    return-object p0
.end method

.method public Xe(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/m;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/m;->RD:Ljava/lang/String;

    return-object p0
.end method

.method public Xf(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/m;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/m;->Ry:Ljava/lang/String;

    return-object p0
.end method

.method public Xg(Ljava/util/ArrayList;)Lcom/xiaomi/accountsdk/account/data/m;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/xiaomi/accountsdk/account/data/m;"
        }
    .end annotation

    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/m;->Rz:Ljava/util/ArrayList;

    return-object p0
.end method

.method public Xh(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/m;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/m;->RA:Ljava/lang/String;

    return-object p0
.end method

.method public Xi(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/m;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/m;->RB:Ljava/lang/String;

    return-object p0
.end method

.method public Xj(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/m;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/m;->RC:Ljava/lang/String;

    return-object p0
.end method

.method public build()Lcom/xiaomi/accountsdk/account/data/l;
    .locals 18

    new-instance v1, Lcom/xiaomi/accountsdk/account/data/l;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xiaomi/accountsdk/account/data/m;->mUserId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/xiaomi/accountsdk/account/data/m;->RC:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/xiaomi/accountsdk/account/data/m;->Ry:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/xiaomi/accountsdk/account/data/m;->Rq:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/xiaomi/accountsdk/account/data/m;->RB:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/xiaomi/accountsdk/account/data/m;->Rz:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/xiaomi/accountsdk/account/data/m;->Rt:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/xiaomi/accountsdk/account/data/m;->Ru:Lcom/xiaomi/accountsdk/account/data/Gender;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/xiaomi/accountsdk/account/data/m;->Rr:Ljava/util/Calendar;

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/xiaomi/accountsdk/account/data/m;->Rw:Z

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/xiaomi/accountsdk/account/data/m;->Rx:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/xiaomi/accountsdk/account/data/m;->RA:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/xiaomi/accountsdk/account/data/m;->RD:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/xiaomi/accountsdk/account/data/m;->Rs:Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/accountsdk/account/data/m;->Rv:Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-direct/range {v1 .. v17}, Lcom/xiaomi/accountsdk/account/data/l;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Lcom/xiaomi/accountsdk/account/data/Gender;Ljava/util/Calendar;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;Lcom/xiaomi/accountsdk/account/data/l;)V

    return-object v1
.end method
