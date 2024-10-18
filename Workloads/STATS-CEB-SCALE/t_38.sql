SELECT COUNT(*)
 FROM comments c,
postHistory ph,
badges b,
users u
WHERE c.Score=0
AND ph.PostHistoryTypeId=5
AND u.Reputation>=1
AND u.Reputation<=356
AND u.DownVotes<=34
AND c.CreationDate>=28
AND ph.CreationDate>=223
AND u.CreationDate>=27
AND u.CreationDate<=1520

AND u.Id = c.UserId
AND u.Id = ph.UserId
AND u.Id = b.UserId;