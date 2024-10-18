SELECT COUNT(*)
 FROM postHistory ph,
posts p,
users u,
badges b
WHERE ph.PostHistoryTypeId = 2
AND p.Score >= 94
AND u.Reputation >= 66
AND u.UpVotes >= 220
AND u.UpVotes <= 449

AND u.Id = p.OwnerUserId
AND p.OwnerUserId = ph.UserId
AND ph.UserId = b.UserId;