SELECT COUNT(*)
 FROM postHistory ph,
posts p,
users u,
badges b
WHERE ph.PostHistoryTypeId = 12
AND p.Score >= 74
AND u.Reputation >= 406
AND u.UpVotes >= 94
AND u.UpVotes <= 1243

AND u.Id = p.OwnerUserId
AND p.OwnerUserId = ph.UserId
AND ph.UserId = b.UserId;