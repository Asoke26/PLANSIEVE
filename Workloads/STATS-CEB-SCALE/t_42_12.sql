SELECT COUNT(*)
 FROM postHistory ph,
posts p,
users u,
badges b
WHERE ph.PostHistoryTypeId = 14
AND p.Score >= -10
AND u.Reputation >= 97
AND u.UpVotes >= 32
AND u.UpVotes <= 692

AND u.Id = p.OwnerUserId
AND p.OwnerUserId = ph.UserId
AND ph.UserId = b.UserId;