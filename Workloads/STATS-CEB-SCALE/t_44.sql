SELECT COUNT(*)
 FROM postHistory ph,
votes v,
users u,
badges b
WHERE ph.PostHistoryTypeId=2
AND u.Views=5
AND u.DownVotes>=0
AND u.UpVotes>=0
AND u.UpVotes<=224
AND u.CreationDate<=1535
AND b.Date>=27
AND b.Date<=1536

AND u.Id = ph.UserId
AND u.Id = v.UserId
AND u.Id = b.UserId;