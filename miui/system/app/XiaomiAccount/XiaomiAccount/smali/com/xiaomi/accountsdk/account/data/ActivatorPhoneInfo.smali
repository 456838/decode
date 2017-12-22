.class public Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final QI:Ljava/lang/String;

.field public final QJ:Ljava/lang/String;

.field public final QK:Ljava/lang/String;

.field public final QL:Ljava/lang/String;

.field public final QM:Ljava/lang/String;

.field public final QN:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xiaomi/accountsdk/account/data/k;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/account/data/k;-><init>()V

    sput-object v0, Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/accountsdk/account/data/j;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/j;->WT(Lcom/xiaomi/accountsdk/account/data/j;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;->QM:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/j;->WU(Lcom/xiaomi/accountsdk/account/data/j;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;->QI:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/j;->WQ(Lcom/xiaomi/accountsdk/account/data/j;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;->QJ:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/j;->WV(Lcom/xiaomi/accountsdk/account/data/j;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;->QN:I

    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/j;->WR(Lcom/xiaomi/accountsdk/account/data/j;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;->QK:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/j;->WS(Lcom/xiaomi/accountsdk/account/data/j;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;->QL:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "phone"

    iget-object v2, p0, Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;->QM:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "phone_hash"

    iget-object v2, p0, Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;->QI:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "activator_token"

    iget-object v2, p0, Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;->QJ:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "slot_id"

    iget v2, p0, Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;->QN:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "copy_writer"

    iget-object v2, p0, Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;->QK:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "operator_link"

    iget-object v2, p0, Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;->QL:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
