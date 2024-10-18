SELECT COUNT(*)
 FROM postHistory ph,
posts p,
users u,
badges b
WHERE ph.PostHistoryTypeId=3
AND p.Score>=-7
AND u.Reputation>=1
AND u.UpVotes>=0
AND u.UpVotes<=117

AND u.Id = p.OwnerUserId
AND p.OwnerUserId = ph.UserId
AND ph.UserId = b.UserId;