SELECT COUNT(*)
 FROM postHistory ph,
posts p,
users u,
badges b
WHERE ph.PostHistoryTypeId = 12
AND p.Score >= -1
AND u.Reputation >= 305
AND u.UpVotes >= 91
AND u.UpVotes <= 350

AND u.Id = p.OwnerUserId
AND p.OwnerUserId = ph.UserId
AND ph.UserId = b.UserId;